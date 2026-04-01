# Tests for ConcordanceCheck

# Testcases:

## DNA → RNA
| TEST ID| InputType A | Sample A       | InputType B | Sample B       | Datatypes | Build mix | Testtype                   |
| ------ | ----------- | -------------- | ----------- | -------------- | --------- | --------- | -------------------------- |
| 100000 | vcf         | DNA-001.GRCh37 | vcf         | RNA-008.GRCh37 | DNA → RNA | same (37) | same-build/cross-platform  |
| 100001 | vcf         | DNA-001.GRCh38 | vcf         | RNA-008.GRCh37 | DNA → RNA | 38 vs 37  | cross-build/cross-platform |
| 100002 | vcf         | DNA-002.GRCh37 | vcf         | RNA-009.GRCh38 | DNA → RNA | 37 vs 38  | cross-build/cross-platform |
| 100003 | vcf         | DNA-002.GRCh38 | vcf         | RNA-009.GRCh38 | DNA → RNA | same (38) | same-build/cross-platform  |
| 100014 | vcf         | DNA-001.GRCh37 | bam         | RNA-008.GRCh37 | DNA → RNA | same (37) | same-build/cross-platform  |
| 100015 | vcf         | DNA-001.GRCh38 | cram        | RNA-008.GRCh37 | DNA → RNA | 38 vs 37  | cross-build/cross-platform |
| 100016 | vcf         | DNA-002.GRCh37 | bam         | RNA-009.GRCh38 | DNA → RNA | 37 vs 38  | cross-build/cross-platform |
| 100017 | vcf         | DNA-002.GRCh38 | cram        | RNA-009.GRCh38 | DNA → RNA | same (38) | same-build/cross-platform  |

##  DNA → DNA
| TEST ID| InputType A | Sample A       | InputType B | Sample B           | Datatypes | Build mix | Testtype                  |
| ------ | ----------- | -------------- | ----------- | ------------------ | --------- | --------- | ------------------------- |
| 100004 | vcf         | DNA-003.GRCh37 | vcf         | DNA-004.GRCh37     | DNA → DNA | same (37) | same-build/same-platform  |
| 100005 | vcf         | DNA-003.GRCh37 | vcf         | DNA-005.GRCh38     | DNA → DNA | 37 vs 38  | cross-build/same-platform |
| 100006 | vcf         | DNA-004.GRCh38 | vcf         | DNA-005.GRCh37     | DNA → DNA | 38 vs 37  | cross-build/same-platform |
| 100007 | vcf         | DNA-004.GRCh38 | vcf         | DNA-003.GRCh38     | DNA → DNA | same (38) | same-build/same-platform  |
| 100018 | vcf         | DNA-003.GRCh37 | bam         | DNA-004.GRCh37     | DNA → DNA | same (37) | same-build/same-platform  |
| 100019 | vcf         | DNA-003.GRCh37 | cram        | DNA-004.GRCh38     | DNA → DNA | 37 vs 38  | cross-build/same-platform |
| 100020 | vcf         | DNA-004.GRCh38 | bam         | DNA-001.GRCh37     | DNA → DNA | 38 vs 37  | cross-build/same-platform |
| 100021 | vcf         | DNA-004.GRCh38 | cram        | DNA-001.GRCh38     | DNA → DNA | same (38) | same-build/same-platform  |
| 100028 | bam         | DNA-005.GRCh37 | vcf         | NGS-NA12878.GRCh37 | DNA → DNA | same (37) | same-build/same-platform  |?
| 100029 | bam         | DNA-001.GRCh37 | vcf         | NGS-NA12878.GRCh38 | DNA → DNA | 37 vs 38  | cross-build/same-platform |?

## RNA -> RNA
| TEST ID| InputType A | Sample A       | InputType B | Sample B       | Datatypes | Build mix | Testtype                  |
| ------ | ----------- | -------------- | ----------- | -------------- | --------- | --------- | ------------------------- |
| 100008 | vcf         | RNA-009.GRCh37 | vcf         | RNA-008.GRCh37 | RNA → RNA | same (37) | same-build/same-platform  |
| 100009 | vcf         | RNA-009.GRCh37 | vcf         | RNA-008.GRCh38 | RNA → RNA | 37 vs 38  | cross-build/same-platform |
| 100010 | vcf         | RNA-008.GRCh38 | vcf         | RNA-009.GRCh37 | RNA → RNA | 38 vs 37  | cross-build/same-platform |
| 100011 | vcf         | RNA-008.GRCh38 | vcf         | RNA-009.GRCh38 | RNA → RNA | same (38) | same-build/same-platform  |
| 100022 | vcf         | RNA-008.GRCh37 | bam         | RNA-008.GRCh37 | RNA → RNA | same (37) | same-build/same-platform  |
| 100023 | vcf         | RNA-008.GRCh37 | cram        | RNA-009.GRCh38 | RNA → RNA | 37 vs 38  | todo.                     |
| 100024 | vcf         | RNA-009.GRCh38 | bam         | RNA-008.GRCh37 | RNA → RNA | 38 vs 37  | cross-build/same-platform |
| 100025 | vcf         | RNA-009.GRCh38 | cram        | RNA-008.GRCh38 | RNA → RNA | same (38) | todo.                     |

## DNA → OPAR
| TEST ID| InputType A | Sample A       | InputType B | Sample B        | Datatypes  | Build mix | Testtype                   |
| ------ | ----------- | -------------- | ----------- | --------------- | ---------- | --------- | -------------------------- |
| 100012 | vcf         | DNA-005.GRCh37 | txt         | OPAR-001.GRCh37 | DNA → OPAR | same (37) | same-build/cross-platform  |
| 100013 | vcf         | DNA-005.GRCh38 | txt         | OPAR-002.GRCh37 | DNA → OPAR | 38 vs 37  | cross-build/cross-platform |
| 100026 | bam         | DNA-004.GRCh37 | txt         | OPAR-001.GRCh37 | DNA → OPAR | same (37) | same-build/cross-platform  |
| 100027 | cram        | DNA-005.GRCh38 | txt         | OPAR-002.GRCh37 | DNA → OPAR | 38 vs 37  | cross-build/cross-platform |

## PGX → OPAR
| TEST ID| InputType A | Sample A       | InputType B | Sample B        | Datatypes  | Build mix | Testtype        |
| ------ | ----------- | -------------- | ----------- | --------------- | ---------- | --------- | --------------- |

## ONT → OPAR
| TEST ID| InputType A | Sample A       | InputType B | Sample B        | Datatypes  | Build mix | Testtype        |
| ------ | ----------- | -------------- | ----------- | --------------- | ---------- | --------- | --------------- |