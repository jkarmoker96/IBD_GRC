view: ibdgrc_dossiers {
  sql_table_name: `skf-bq-analytics-hub.mrep_ibdgrc.ibdgrc_dossiers` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: agent_id {
    type: number
    sql: ${TABLE}.agent_id ;;
  }
  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }
  dimension_group: amv_fp_ass {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.amv_fp_ass_date ;;
  }
  dimension_group: amv_fp_dis {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.amv_fp_dis_date ;;
  }
  dimension_group: amv_fp_imp {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.amv_fp_imp_date ;;
  }
  dimension: api_current_mono {
    type: number
    sql: ${TABLE}.api_current_mono ;;
  }
  dimension_group: api_current_mono {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.api_current_mono_date ;;
  }
  dimension_group: api_dpf_lic {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.api_dpf_lic_date ;;
  }
  dimension_group: api_gmp_lic {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.api_gmp_lic_date ;;
  }
  dimension_group: api_man_lic {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.api_man_lic_date ;;
  }
  dimension: api_name {
    type: string
    sql: ${TABLE}.api_name ;;
  }
  dimension_group: api_spec_cd_cofa_av {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.api_spec_cd_cofa_av_date ;;
  }
  dimension: approved {
    type: number
    sql: ${TABLE}.approved ;;
  }
  dimension: approved_by {
    type: number
    sql: ${TABLE}.approved_by ;;
  }
  dimension: assigned_by {
    type: number
    sql: ${TABLE}.assigned_by ;;
  }
  dimension: assigned_person {
    type: string
    sql: ${TABLE}.assigned_person ;;
  }
  dimension: be_cost {
    type: number
    sql: ${TABLE}.be_cost ;;
  }
  dimension: cid {
    type: string
    sql: ${TABLE}.cid ;;
  }
  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }
  dimension: consume_per_batch {
    type: number
    sql: ${TABLE}.consume_per_batch ;;
  }
  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }
  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }
  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }
  dimension: default_shelf_life {
    type: number
    sql: ${TABLE}.default_shelf_life ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension_group: dispatch_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dispatch_date ;;
  }
  dimension: doc_no {
    type: string
    sql: ${TABLE}.doc_no ;;
  }
  dimension_group: dossier_dispatch {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dossier_dispatch_date ;;
  }
  dimension: dossier_format {
    type: string
    sql: ${TABLE}.dossier_format ;;
  }
  dimension: dossier_type {
    type: number
    sql: ${TABLE}.dossier_type ;;
  }
  dimension_group: entry {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.entry_date ;;
  }
  dimension: epis_status {
    type: number
    sql: ${TABLE}.epis_status ;;
  }
  dimension: epis_version {
    type: string
    sql: ${TABLE}.epis_version ;;
  }
  dimension: executive_id {
    type: number
    sql: ${TABLE}.executive_id ;;
  }
  dimension: executive_name {
    type: string
    sql: ${TABLE}.executive_name ;;
  }
  dimension_group: expire {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.expire_date ;;
  }
  dimension: expired {
    type: number
    sql: ${TABLE}.expired ;;
  }
  dimension: export_brand_name {
    type: string
    sql: ${TABLE}.export_brand_name ;;
  }
  dimension: export_item_code {
    type: string
    sql: ${TABLE}.export_item_code ;;
  }
  dimension: export_item_name {
    type: string
    sql: ${TABLE}.export_item_name ;;
  }
  dimension: exported {
    type: number
    sql: ${TABLE}.exported ;;
  }
  dimension: forecast1 {
    type: number
    sql: ${TABLE}.forecast1 ;;
  }
  dimension: forecast2 {
    type: number
    sql: ${TABLE}.forecast2 ;;
  }
  dimension: forecast3 {
    type: number
    sql: ${TABLE}.forecast3 ;;
  }
  dimension: forecast4 {
    type: number
    sql: ${TABLE}.forecast4 ;;
  }
  dimension_group: formulation {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.formulation_date ;;
  }
  dimension: fp_mono {
    type: number
    sql: ${TABLE}.fp_mono ;;
  }
  dimension_group: fp_mono {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fp_mono_date ;;
  }
  dimension_group: fp_spec_cd_cofa_av {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fp_spec_cd_cofa_av_date ;;
  }
  dimension: generic_id {
    type: number
    sql: ${TABLE}.generic_id ;;
  }
  dimension: generic_name {
    type: string
    sql: ${TABLE}.generic_name ;;
  }
  dimension: innovator_brand_id {
    type: number
    sql: ${TABLE}.innovator_brand_id ;;
  }
  dimension: innovator_brand_name {
    type: string
    sql: ${TABLE}.innovator_brand_name ;;
  }
  dimension: is_amv_av {
    type: string
    sql: ${TABLE}.is_amv_av ;;
  }
  dimension: is_amv_fp_ass {
    type: string
    sql: ${TABLE}.is_amv_fp_ass ;;
  }
  dimension: is_amv_fp_dis {
    type: string
    sql: ${TABLE}.is_amv_fp_dis ;;
  }
  dimension: is_amv_fp_imp {
    type: string
    sql: ${TABLE}.is_amv_fp_imp ;;
  }
  dimension: is_api_dpf_lic_av {
    type: number
    sql: ${TABLE}.is_api_dpf_lic_av ;;
  }
  dimension: is_api_gmp_lic_av {
    type: number
    sql: ${TABLE}.is_api_gmp_lic_av ;;
  }
  dimension: is_api_man_lic_av {
    type: number
    sql: ${TABLE}.is_api_man_lic_av ;;
  }
  dimension: is_api_spec_cd_cofa_av {
    type: number
    sql: ${TABLE}.is_api_spec_cd_cofa_av ;;
  }
  dimension: is_be_required {
    type: number
    sql: ${TABLE}.is_be_required ;;
  }
  dimension: is_dmf_av {
    type: string
    sql: ${TABLE}.is_dmf_av ;;
  }
  dimension: is_export_brand_same {
    type: number
    sql: ${TABLE}.is_export_brand_same ;;
  }
  dimension: is_formulation_robust {
    type: number
    sql: ${TABLE}.is_formulation_robust ;;
  }
  dimension: is_fp_spec_cd_cofa_av {
    type: number
    sql: ${TABLE}.is_fp_spec_cd_cofa_av ;;
  }
  dimension: is_new_parts_required {
    type: number
    sql: ${TABLE}.is_new_parts_required ;;
  }
  dimension: is_pd_report {
    type: string
    sql: ${TABLE}.is_pd_report ;;
  }
  dimension: is_pd_report_done {
    type: number
    sql: ${TABLE}.is_pd_report_done ;;
  }
  dimension: is_plant_reg_required {
    type: number
    sql: ${TABLE}.is_plant_reg_required ;;
  }
  dimension: is_process_val_av {
    type: number
    sql: ${TABLE}.is_process_val_av ;;
  }
  dimension: is_profiling_done {
    type: number
    sql: ${TABLE}.is_profiling_done ;;
  }
  dimension: is_pv_av {
    type: string
    sql: ${TABLE}.is_pv_av ;;
  }
  dimension: is_rld_strength_av {
    type: number
    sql: ${TABLE}.is_rld_strength_av ;;
  }
  dimension: is_sample_required {
    type: number
    sql: ${TABLE}.is_sample_required ;;
  }
  dimension: is_stb_data_av {
    type: number
    sql: ${TABLE}.is_stb_data_av ;;
  }
  dimension: is_stb_data_av_accel_ok {
    type: number
    sql: ${TABLE}.is_stb_data_av_accel_ok ;;
  }
  dimension: is_stb_data_av_lng_ok {
    type: number
    sql: ${TABLE}.is_stb_data_av_lng_ok ;;
  }
  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }
  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }
  dimension: launching_type {
    type: number
    sql: ${TABLE}.launching_type ;;
  }
  dimension_group: local_launching {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.local_launching_date ;;
  }
  dimension: lta_no {
    type: string
    sql: ${TABLE}.lta_no ;;
  }
  dimension_group: lta_sign {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.lta_sign_date ;;
  }
  dimension: manufacturer_id {
    type: number
    sql: ${TABLE}.manufacturer_id ;;
  }
  dimension: market_id {
    type: string
    sql: ${TABLE}.market_id ;;
  }
  dimension: mfg_unit {
    type: string
    sql: ${TABLE}.mfg_unit ;;
  }
  dimension: min_shelf_life {
    type: number
    sql: ${TABLE}.min_shelf_life ;;
  }
  dimension_group: moh_submit {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.moh_submit_date ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension_group: new_parts_required_av {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.new_parts_required_av_date ;;
  }
  dimension: origin_country_id {
    type: number
    sql: ${TABLE}.origin_country_id ;;
  }
  dimension: pack_size {
    type: string
    sql: ${TABLE}.pack_size ;;
  }
  dimension: partner_id {
    type: number
    sql: ${TABLE}.partner_id ;;
  }
  dimension: partner_name {
    type: string
    sql: ${TABLE}.partner_name ;;
  }
  dimension_group: pd_report_av {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pd_report_av_date ;;
  }
  dimension: plant_id {
    type: number
    sql: ${TABLE}.plant_id ;;
  }
  dimension: plant_name {
    type: string
    sql: ${TABLE}.plant_name ;;
  }
  dimension_group: plant_reg_edd {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.plant_reg_edd ;;
  }
  dimension: plant_unit_id {
    type: number
    sql: ${TABLE}.plant_unit_id ;;
  }
  dimension_group: prepare_target {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prepare_target_date ;;
  }
  dimension: prepared {
    type: number
    sql: ${TABLE}.prepared ;;
  }
  dimension_group: prepared {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prepared_at ;;
  }
  dimension: prepared_by {
    type: number
    sql: ${TABLE}.prepared_by ;;
  }
  dimension_group: process_val_av {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.process_val_av_date ;;
  }
  dimension: processed {
    type: number
    sql: ${TABLE}.processed ;;
  }
  dimension_group: processed {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.processed_at ;;
  }
  dimension: processed_by {
    type: number
    sql: ${TABLE}.processed_by ;;
  }
  dimension_group: profiling_done {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.profiling_done_date ;;
  }
  dimension_group: re_reg {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.re_reg_date ;;
  }
  dimension_group: re_reg_sending {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.re_reg_sending_date ;;
  }
  dimension: ref_no {
    type: string
    sql: ${TABLE}.ref_no ;;
  }
  dimension_group: reg_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.reg_date ;;
  }
  dimension: reg_file {
    type: string
    sql: ${TABLE}.reg_file ;;
  }
  dimension: reg_no {
    type: string
    sql: ${TABLE}.reg_no ;;
  }
  dimension: reg_planing_through {
    type: string
    sql: ${TABLE}.reg_planing_through ;;
  }
  dimension: reg_query {
    type: string
    sql: ${TABLE}.reg_query ;;
  }
  dimension_group: reg_query {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.reg_query_date ;;
  }
  dimension_group: reg_query_submit {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.reg_query_submit_date ;;
  }
  dimension: registered {
    type: number
    sql: ${TABLE}.registered ;;
  }
  dimension: remarks1 {
    type: string
    sql: ${TABLE}.remarks1 ;;
  }
  dimension: remarks2 {
    type: string
    sql: ${TABLE}.remarks2 ;;
  }
  dimension: remarks3 {
    type: string
    sql: ${TABLE}.remarks3 ;;
  }
  dimension: remarks4 {
    type: string
    sql: ${TABLE}.remarks4 ;;
  }
  dimension: remarks5 {
    type: string
    sql: ${TABLE}.remarks5 ;;
  }
  dimension: remarks6 {
    type: string
    sql: ${TABLE}.remarks6 ;;
  }
  dimension: remarks_planning {
    type: string
    sql: ${TABLE}.remarks_planning ;;
  }
  dimension: remarks_re_reg {
    type: string
    sql: ${TABLE}.remarks_re_reg ;;
  }
  dimension: remarks_reg {
    type: string
    sql: ${TABLE}.remarks_reg ;;
  }
  dimension: remarks_sending {
    type: string
    sql: ${TABLE}.remarks_sending ;;
  }
  dimension: req_id {
    type: number
    sql: ${TABLE}.req_id ;;
  }
  dimension: req_sl {
    type: string
    sql: ${TABLE}.req_sl ;;
  }
  dimension_group: request {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.request_date ;;
  }
  dimension: requested_by {
    type: number
    sql: ${TABLE}.requested_by ;;
  }
  dimension: rld_strength {
    type: string
    sql: ${TABLE}.rld_strength ;;
  }
  dimension_group: rld_strength_av {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.rld_strength_av_date ;;
  }
  dimension: sample_required_in {
    type: number
    sql: ${TABLE}.sample_required_in ;;
  }
  dimension_group: sending_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sending_date ;;
  }
  dimension: serial {
    type: string
    sql: ${TABLE}.serial ;;
  }
  dimension: shelf_life {
    type: string
    sql: ${TABLE}.shelf_life ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: stb_data_av_accel {
    type: string
    sql: ${TABLE}.stb_data_av_accel ;;
  }
  dimension: stb_data_av_batch_no {
    type: string
    sql: ${TABLE}.stb_data_av_batch_no ;;
  }
  dimension_group: stb_data_av {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.stb_data_av_date ;;
  }
  dimension: stb_data_av_lng {
    type: string
    sql: ${TABLE}.stb_data_av_lng ;;
  }
  dimension: stb_report {
    type: string
    sql: ${TABLE}.stb_report ;;
  }
  dimension_group: target_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.target_date ;;
  }
  dimension: tent_cost {
    type: number
    sql: ${TABLE}.tent_cost ;;
  }
  dimension: tnt_data_gen_cost {
    type: number
    sql: ${TABLE}.tnt_data_gen_cost ;;
  }
  dimension: total_dossier_cost {
    type: number
    sql: ${TABLE}.total_dossier_cost ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  dimension: yearmonth {
    type: number
    sql: ${TABLE}.yearmonth ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	agent_name,
	partner_name,
	api_name,
	innovator_brand_name,
	item_name,
	plant_name,
	export_brand_name,
	generic_name,
	executive_name,
	country_name,
	export_item_name
	]
  }

}
