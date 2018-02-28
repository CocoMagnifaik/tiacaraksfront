/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mongodb;

/**
 *
 * @author CEDRICK
 */
import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.MongoException;
public class ConnectionBase {
   
    DB db;
    MongoClient mongo;
    public DB getConnection() throws Exception{
        try{ 
            MongoClientURI uri = new MongoClientURI("mongodb://rcj:rcj@ds235877.mlab.com:35877/tiacaraks");
            mongo = new MongoClient(uri);
        } catch (MongoException e) {
        }
        return db= mongo.getDB("tiacaraks");
    }
}
