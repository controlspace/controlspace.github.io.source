---
title: Read S3 CSV Files into HashMaps Using OpenCSV
date: 2021-01-17
tags: ['java', 's3', 'aws', 'opencsv', 'data', 'files']
author: Jyothi Prasad Buddha
description: Demonstrates how to read csv files as hash maps from S3 without downloading them
---

In this world where large amounts of data is becoming a norm, it is very frequently stored in S3 in csv format for consumption through serverless database layers such as Athena. However, you often have to read the csv files without using Athena. In such cases, you can use ever useful libraries such as OpenCSV to read csv files.

This article shows how to quickly read the S3 files without need to download them first. This helps when you do not have a way to save files locally of if you don't have enough hard disk space. The solution is quite simple. You just have to create an InputStream from an S3 object using getObject method on S3 client.

Once the input stream is created, we can use this to create a CSVReader from it. Assuming that the CSV files have a header row, you can use CSVReaderHeaderAware class to create a list of hashmaps by reading each record iteratively using readMap method. If readMap method returns null, this means that you have reached end of file. Here is a complete solution for your reference.

{% codeblock lang:java %}
import java.io.*;
import java.util.*;

import com.opencsv.*;
import com.opencsv.exceptions.CsvValidationException;

import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.S3Object;

public class S3CSVReader {
    public List<Map<String, String>> getS3Records(String bucket, String key) throws IOException, CsvValidationException {
        List<Map<String, String>> records = new ArrayList();
        try (CSVReaderHeaderAware reader = getReader(bucket, key)) {
            Map<String, String> values;
            while ((values = reader.readMap()) != null) {
                records.add(values);
            }
            return records;
        }
    }

    private CSVReaderHeaderAware getReader(String bucket, String key) {
        CSVParser parser = new CSVParserBuilder().build();
        S3Object object = AmazonS3ClientBuilder.defaultClient().getObject(bucket, key);
        var br = new InputStreamReader(object.getObjectContent());
        return (CSVReaderHeaderAware) new CSVReaderHeaderAwareBuilder(br)
                .withCSVParser(parser)
                .build();
    }
}
{% endcodeblock %}

 <!-- more -->

In order to use this code, you can create an object of S3CSVReader class and invoke `getS3Records` method by passing the S3 bucket name and key path of the CSV file in S3. This method creates a reader object and iterates through all records to create a List of HashMaps and returns the result.

In this snippet, we have one auxiliary method `getReader` to help with creation of the reader object that is aware of header row.

If you want to create a reader for TSV files instead of CSV you can create a different parser object such as below. You can also use any custom separators while building the parser.

{% codeblock lang:java %}
CSVParser parser = new CSVParserBuilder().withSeparator('\t').build();
{% endcodeblock %}

---
