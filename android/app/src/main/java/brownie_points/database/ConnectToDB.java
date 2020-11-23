package brownie_points.database;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.MongoCredential;
import com.mongodb.client.MongoDatabase;

public class ConnectToDB {

    public ConnectToDB() {
        String db = "mongodb+srv://App_Systems:COP4331@cop4331-big-project.sgmpq.mongodb.net/test";
        MongoClientURI uri = new MongoClientURI(db);
        // Creating a Mongo client
        MongoClient mongo = new MongoClient(uri);
        // Creating Credentials
        MongoCredential credential = MongoCredential.createCredential("master", "cooking_app_test",
                "password".toCharArray());
        System.out.println("Connected to the database successfully");


        // Accessing the database
        MongoDatabase database = mongo.getDatabase("cooking_app_test");
        System.out.println("Credentials ::"+ credential);
    }
}