view: ibdgrc_dossier_planning {
  sql_table_name: `skf-bq-analytics-hub.mrep_ibdgrc.ibdgrc_dossier_planning` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: cid {
    type: string
    sql: ${TABLE}.cid ;;
  }
  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }
  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: doc_no {
    type: string
    sql: ${TABLE}.doc_no ;;
  }
  dimension: dossier_format {
    type: string
    sql: ${TABLE}.dossier_format ;;
  }
  dimension_group: entry {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.entry_date ;;
  }
  dimension: executive_id {
    type: number
    sql: ${TABLE}.executive_id ;;
  }
  dimension: export_item_code {
    type: string
    sql: ${TABLE}.export_item_code ;;
  }
  dimension: export_item_name {
    type: string
    sql: ${TABLE}.export_item_name ;;
  }
  dimension: generic_id {
    type: number
    sql: ${TABLE}.generic_id ;;
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
  dimension: is_dmf_av {
    type: string
    sql: ${TABLE}.is_dmf_av ;;
  }
  dimension: is_pd_report {
    type: string
    sql: ${TABLE}.is_pd_report ;;
  }
  dimension: is_pv_av {
    type: string
    sql: ${TABLE}.is_pv_av ;;
  }
  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }
  dimension: market_id {
    type: string
    sql: ${TABLE}.market_id ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension: pack_size {
    type: string
    sql: ${TABLE}.pack_size ;;
  }
  dimension: partner_id {
    type: number
    sql: ${TABLE}.partner_id ;;
  }
  dimension: plant_id {
    type: number
    sql: ${TABLE}.plant_id ;;
  }
  dimension: plant_unit_id {
    type: number
    sql: ${TABLE}.plant_unit_id ;;
  }
  dimension_group: prepared {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prepared_at ;;
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
  dimension: ref_no {
    type: string
    sql: ${TABLE}.ref_no ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }
  dimension: req_id {
    type: number
    sql: ${TABLE}.req_id ;;
  }
  dimension_group: request {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.request_date ;;
  }
  dimension: self_life {
    type: number
    sql: ${TABLE}.self_life ;;
  }
  dimension: serial {
    type: string
    sql: ${TABLE}.serial ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension_group: target {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.target_date ;;
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
    drill_fields: [id, export_item_name]
  }
}
