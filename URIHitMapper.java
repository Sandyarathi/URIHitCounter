package URIHit;

import java.io.IOException;
import java.util.Arrays;
import java.util.StringTokenizer;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.lib.input.FileSplit;

public class URIHitMapper  extends Mapper<Object, Text, Text, IntWritable> {
      
	private final static IntWritable one = new IntWritable(1);
    public void map(Text key, Text value, Context context) throws IOException, InterruptedException {
            String URI= key.toString().substring(key.toString().indexOf('\"'),key.toString().lastIndexOf('\"'));
            context.write(new Text(URI), one);
		
	}
	
	
}