--
-- Database: `db699202183`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_table`
--

CREATE TABLE IF NOT EXISTS action_table (
  action_id INT PRIMARY KEY NOT NULL,
  action text NOT NULL
); --ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `action_table`
--

INSERT INTO action_table (action_id, action) VALUES
(0, 'Solicitation'),
(1, 'Initial Award'),
(2, 'Modification'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `apr1_table`
--

CREATE TABLE IF NOT EXISTS apr1_table (
  apr1_id INT PRIMARY KEY NOT NULL, --COMMENT 'PK for table',
  apr1_val INT NOT NULL --COMMENT 'placeholder',
); --ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apr2_table`
--

CREATE TABLE IF NOT EXISTS apr2_table (
  apr2_id INT PRIMARY KEY NOT NULL, --COMMENT 'PK for table',
  apr2_val int NOT NULL --COMMENT 'placeholder',
); --ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_type_table`
--

CREATE TABLE IF NOT EXISTS contract_type_table (
  contract_type_id INT PRIMARY KEY NOT NULL, --COMMENT 'primary key',
  contract_type TEXT NOT NULL --COLLATE latin1_general_ci NOT NULL COMMENT 'contract type text',
  --PRIMARY KEY (`contract_type_id`)
); --ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `contract_type_table`
--

INSERT INTO contract_type_table (contract_type_id, contract_type) VALUES
(0, 'Administrative Modification'),
(1, 'Other Modifications (OY exercise, De-obligation, etc.)'),
(2, 'Simplified Acquisitions ($3k to $10k)'),
(3, 'Simplified Acquisitions ($10k to $150k)'),
(4, 'Commercial Items ($150k to $7M)'),
(5, 'Competitive Contracts'),
(6, 'Competitive Task/Delivery Orders'),
(7, 'Direct 8(a) Contracts'),
(8, 'Cost-Type Contracts'),
(9, 'Non-Competitive Contracts');

-- --------------------------------------------------------

--
-- Table structure for table `extent_competed_table`
--

CREATE TABLE IF NOT EXISTS extent_competed_table (
  ext_id INT PRIMARY KEY NOT NULL, --COMMENT 'primary key',
  ext_competed text NOT NULL --COLLATE latin1_general_ci NOT NULL COMMENT 'competed text value',
  --PRIMARY KEY (`ext_id`)
); --ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `extent_competed_table`
--

INSERT INTO extent_competed_table (ext_id, ext_competed) VALUES
(0, 'Competed Delivery/Task Order'),
(1, 'Direct 8(a)'),
(2, 'Full and Open'),
(3, 'NASA SEWP'),
(4, 'Single Award IDIQ'),
(5, 'Small Business Set-Aside'),
(6, 'Sole Source');

-- --------------------------------------------------------

--
-- Table structure for table `fund_type_table`
--

CREATE TABLE IF NOT EXISTS fund_type_table (
  fund_id int PRIMARY KEY NOT NULL, --COMMENT 'primarykey',
  fund_type text NOT NULL --COLLATE latin1_general_ci NOT NULL,
  --PRIMARY KEY (`fund_id`)
); --ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `fund_type_table`
--

INSERT INTO fund_type_table (fund_id, fund_type) VALUES
(0, 'O&M'),
(1, 'RDT&E'),
(2, 'Procurement'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `ism_table`
--

CREATE TABLE IF NOT EXISTS ism_table (
  ism_id int PRIMARY KEY NOT NULL, --COMMENT 'PK for table',
  ism_val1 int NOT NULL --COMMENT 'placeholder',
  --PRIMARY KEY (`ism_id`)
); --ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `milestones_table`
--

CREATE TABLE IF NOT EXISTS milestones_table (
  milestone_id int PRIMARY KEY NOT NULL, --COMMENT 'primary key',
  template_name text NOT NULL, --COLLATE latin1_general_ci NOT NULL COMMENT 'template name text value',
  full_package_received int NOT NULL, --COMMENT 'duration in number of days',
  mandatory_approvals int NOT NULL, --COMMENT 'duration in number of days',
  rfi_src_sought_rel int NOT NULL,
  rfi_src_sought_eval int NOT NULL, --COMMENT 'duration in number of days',
  small_business_coord int NOT NULL, --COMMENT 'duration in number of days',
  synopsis_released int NOT NULL, --COMMENT 'duration in number of days',
  rfp_prep_rev int NOT NULL, --COMMENT 'duration in number of days',
  pre_solicitation_scrb int NOT NULL, --COMMENT 'duration in number of days',
  rfp_released int NOT NULL, --COMMENT 'duration in number of days',
  proposals_due int NOT NULL, --COMMENT 'duration in number of days',
  tech_eval_end int NOT NULL, --COMMENT 'duration in number of days',
  cost_price_eval_end int NOT NULL, --COMMENT 'duration in number of days',
  neg_end int NOT NULL, --COMMENT 'duration in number of days',
  rev_proposal_received int NOT NULL, --COMMENT 'duration in number of days',
  tech_eval_rev_end int NOT NULL, --COMMENT 'duration in number of days',
  cost_price_eval_rev_end int NOT NULL, --COMMENT 'duration in number of days',
  award_doc_prepared int NOT NULL, --COMMENT 'duration in number of days',
  pre_award_scrb int NOT NULL, --COMMENT 'duration in number of days',
  contract_signed int NOT NULL, --COMMENT 'duration in number of days',
  last_update timestamp NOT NULL, --COMMENT 'date and time this record was saved to db',
  user_dn text NOT NULL --COLLATE latin1_general_ci NOT NULL COMMENT 'pki dn from user',
  --PRIMARY KEY (`milestone_id`)
); --ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `milestones_table`
--

INSERT INTO milestones_table (milestone_id, template_name, full_package_received, rfi_src_sought_rel, rfi_src_sought_eval, small_business_coord, mandatory_approvals, synopsis_released, rfp_prep_rev, pre_solicitation_scrb, rfp_released, proposals_due, tech_eval_end, cost_price_eval_end, neg_end, rev_proposal_received, tech_eval_rev_end, cost_price_eval_rev_end, award_doc_prepared, pre_award_scrb, contract_signed, last_update, user_dn) VALUES
(0, 'Administrative Modification', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, now(), ''),
(1, 'Other Modifications (OY exercise, De-obligation, etc.)', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, now(), ''),
(2, 'Simplified Acquisitions ($3k to $10k)', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, now(), ''),
(3, 'Simplified Acquisitions ($10k to $150k)', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, now(), ''),
(4, 'Commercial Items ($150k to $7M)', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, now(), ''),
(5, 'Competitive Contracts', 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, now(), ''),
(6, 'Competitive Task/Delivery Orders', 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, now(), ''),
(7, 'Direct 8(a) Contracts', 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, now(), ''),
(8, 'Cost-Type Contracts', 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, now(), ''),
(9, 'Non-Competitive Contracts', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, now(), '');

CREATE TABLE IF NOT EXISTS milestones_name_map_table (
  milestone_name text PRIMARY KEY NOT NULL,
  milestone_display_name text NOT NULL
);

INSERT INTO milestones_name_map_table (milestone_name, milestone_display_name) VALUES
('full_package_received', 'Full Package Received'),
('mandatory_approvals', 'Mandatory Approvals (J&A, JOFOC, DD254, D&Fs, Acquisition Plan, Source Selection Plan)'),
('rfi_src_sought_rel', 'RFI/Sources Sought Released'),
('rfi_src_sought_eval', 'Responses to RFI/Sources Sought Evaluated'),
('small_business_coord', 'Small Business Coordination (DD Form 2579)'),
('synopsis_released', 'Synopsis Released'),
('rfp_prep_rev', 'RFP Prepared/Reviewed'),
('pre_solicitation_scrb', 'Pre Solicitation SCRB'),
('rfp_released', 'RFP Released'),
('proposals_due', 'Proposals Due'),
('tech_eval_end', 'Tech Eval Completed'),
('cost_price_eval_end', 'Cost/Price Evaluation Completed'),
('neg_end', 'Negotiations Completed'),
('rev_proposal_received', 'Revised Proposals Received'),
('tech_eval_rev_end', 'Tech Eval of Revised Proposals Completed'),
('cost_price_eval_rev_end', 'Cost/Price Eval of Revised Proposals Completed'),
('award_doc_prepared', 'Award Documentation Prepared'),
('pre_award_scrb', 'Pre-Award SCRB'),
('contract_signed', 'Contract Signed/Released');
  

-- --------------------------------------------------------

--
-- Table structure for table `org_table`
--

CREATE TABLE IF NOT EXISTS org_table (
  org_id int PRIMARY KEY NOT NULL, --COMMENT 'org id number primary key',
  org_name text NOT NULL, --COLLATE latin1_general_ci NOT NULL COMMENT 'full name',
  org_abrv text NOT NULL --COLLATE latin1_general_ci NOT NULL COMMENT 'abrv of org',
  --PRIMARY KEY (`org_id`)
); --ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `org_table`
--

INSERT INTO org_table (org_id, org_name, org_abrv) VALUES
(0, 'Chief Information Office HQ', 'CIO HQ'),
(1, 'Chief Information Office 1', 'CIO-1'),
(2, 'Chief Information Office 2', 'CIO-2'),
(3, 'Chief Information Office 3', 'CIO-3'),
(4, 'Chief Information Office 4', 'CIO-4'),
(5, 'Chief Information Office 5', 'CIO-5'),
(6, 'Other', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `palt_table`
--

CREATE TABLE IF NOT EXISTS palt_table (
  palt_id int PRIMARY KEY NOT NULL, --COMMENT 'primary key',
  user_dn text NOT NULL, --COLLATE latin1_general_ci NOT NULL COMMENT 'pki or dn from user',
  contract_number text NOT NULL, --COLLATE latin1_general_ci NOT NULL,
  apr_number text NOT NULL, --COLLATE latin1_general_ci NOT NULL,
  contract_specialist text NOT NULL, --COLLATE latin1_general_ci NOT NULL,
  tech_poc text NOT NULL, --COLLATE latin1_general_ci NOT NULL,
  cor text NOT NULL, --COLLATE latin1_general_ci NOT NULL,
  kind_of_action text NOT NULL, --COLLATE latin1_general_ci NOT NULL COMMENT 'from action_table',
  est_action_value int NOT NULL,
  spend_plan_id text NOT NULL, --COLLATE latin1_general_ci NOT NULL,
  purpose text, --COLLATE latin1_general_ci,
  modification text, --COLLATE latin1_general_ci,
  contract_type text NOT NULL, --COLLATE latin1_general_ci NOT NULL COMMENT 'from contract_type_table',
  dia_org text NOT NULL, --COLLATE latin1_general_ci NOT NULL COMMENT 'from org_table',
  contracting_officer text NOT NULL, --COLLATE latin1_general_ci NOT NULL,
  pop_date date NOT NULL,
  extent_competed text NOT NULL, --COLLATE latin1_general_ci NOT NULL COMMENT 'from extent_competed_table',
  fund_type text NOT NULL, --COLLATE latin1_general_ci NOT NULL COMMENT 'from fund_type_table',
  the_date date NOT NULL, --COMMENT 'either start date or end date',
  full_package_received int NOT NULL, --COMMENT 'actual duration in PALT',
  rfi_src_sought_rel int NOT NULL,
  rfi_src_sought_eval int NOT NULL, --COMMENT 'actual duration in PALT',
  small_business_coord int NOT NULL, --COMMENT 'actual duration in PALT',
  mandatory_approvals int NOT NULL, --COMMENT 'actual duration in PALT',
  synopsis_released int NOT NULL, --COMMENT 'actual duration in PALT',
  rfp_prep_rev int NOT NULL, --COMMENT 'actual duration in PALT',
  pre_solicitation_scrb int NOT NULL, --COMMENT 'actual duration in PALT',
  rfp_released int NOT NULL, --COMMENT 'actual duration in PALT',
  proposals_due int NOT NULL, --COMMENT 'actual duration in PALT',
  tech_eval_end int NOT NULL, --COMMENT 'actual duration in PALT',
  cost_price_eval_end int NOT NULL, --COMMENT 'actual duration in PALT',
  neg_end int NOT NULL, --COMMENT 'actual duration in PALT',
  rev_proposal_received int NOT NULL, --COMMENT 'actual duration in PALT',
  tech_eval_rev_end int NOT NULL, --COMMENT 'actual duration in PALT',
  cost_price_eval_rev_end int NOT NULL, --COMMENT 'actual duration in PALT',
  award_doc_prepared int NOT NULL, --COMMENT 'actual duration in PALT',
  pre_award_scrb int NOT NULL, --COMMENT 'actual duration in PALT',
  contract_signed int NOT NULL, --COMMENT 'actual duration in PALT',
  full_package_received_date date NOT NULL, --COMMENT 'actual date in PALT',
  rfi_src_sought_rel_date date NOT NULL,
  rfi_src_sought_eval_date date NOT NULL, --COMMENT 'actual date in PALT',
  small_business_coord_date date NOT NULL, --COMMENT 'actual date in PALT',
  mandatory_approvals_date date NOT NULL, --COMMENT 'actual date in PALT',
  synopsis_released_date date NOT NULL, --COMMENT 'actual date in PALT',
  rfp_prep_rev_date date NOT NULL, --COMMENT 'actual date in PALT',
  pre_solicitation_scrb_date date NOT NULL, --COMMENT 'actual date in PALT',
  rfp_released_date date NOT NULL, --COMMENT 'actual date in PALT',
  proposals_due_date date NOT NULL, --COMMENT 'actual date in PALT',
  tech_eval_end_date date NOT NULL, --COMMENT 'actual date in PALT',
  cost_price_eval_end_date date NOT NULL, --COMMENT 'actual date in PALT',
  neg_end_date date NOT NULL, --COMMENT 'actual date in PALT',
  rev_proposal_received_date date NOT NULL, --COMMENT 'actual date in PALT',
  tech_eval_rev_end_date date NOT NULL, --COMMENT 'actual date in PALT',
  cost_price_eval_rev_end_date date NOT NULL, --COMMENT 'actual date in PALT',
  award_doc_prepared_date date NOT NULL, --COMMENT 'actual date in PALT',
  pre_award_scrb_date date NOT NULL, --COMMENT 'actual date in PALT',
  contract_signed_date date NOT NULL, --COMMENT 'actual date in PALT',
  last_update timestamp NOT NULL --COMMENT 'date and time this record was saved to db',
  --PRIMARY KEY (`palt_id`)
); --ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;


