#Overview of NMRC survey files and their function:
##Primary Files
[master_merge_key.txt](master_merge_key.txt) Key for the merged data file. This is the primary output produced by the [mergeclean](mergeclean.R) document.

[mergeclean.R](mergeclean.R) This is the data cleaning and merging file. Avoid pushing edits on this file. Consult Sam before any changes are pushed. Note that this file is sensitive to R Studio's text editor. Only edit in native R text editor or notepad. 

[csv_export_template.R](csv_export_template.R) A state-level csv export of the merged data set. Avoid pushing changes to this file, rather use as a local reference.


[Program_Reports.Rmd](Program_Reports.Rmd) Program Reports R Markdown Document is the automatic reporting program for survey results and graphs. This is the primary file that will be used to produce state level reports.

[st_compl_report.Rmd](st_compl_report.Rmd) Standard state completion report template. 

##Less Important Files

[heat_maps.R](heat_maps.R) Program for producing state level heatmaps. Avoid running program from this file, rather use the file below.

[agencykey.txt](agency_key.txt) Agency key is the codebook for agency files imported from the wide.csv Gizmo export. This file is only used as a reference.

[heat_maps_run.R](heat_maps_run.R) Program for running the heat_maps.R program.

[report_template.Rmd](report_template.Rmd) This is a placeholder for word report templates to be distributed to states. 

#Guide for installing the necessary software and running the programs (work in progress)
