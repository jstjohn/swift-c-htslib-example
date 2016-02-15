import CSAM
import CHTS

let samFilePth = "/usr/local/share/htslib/test/ce#1.sam"
let infile = hts_open(samFilePth, "r")
let header = sam_hdr_read(infile)
let outfile = hts_open("-", "w")
var bam_ptr: UnsafeMutablePointer<bam1_t> = bam_init1()
var retval = sam_read1(infile, header, bam_ptr)
while(retval >= 0){
	sam_write1(outfile, header, bam_ptr)
	retval = sam_read1(infile, header, bam_ptr)
}
hts_close(infile)
hts_close(outfile)
bam_destroy1(bam_ptr)
bam_hdr_destroy(header)

