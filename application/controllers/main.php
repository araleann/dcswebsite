<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct(){
            parent::__construct();
            // Your own constructor code
            $this->load->model(array('sponsors', 'faculty'));
    }

	public function index(){
		$this->home();
	}

	public function home(){
		$this->load->view('landing');
	}

	public function news(){
		$this->load->view('news');
	}
	
	public function about(){
		$this->load->view('about');
	}

	public function research(){
		$this->load->view('research');
	}
	
	public function test(){
		$this->load->view('test');
	}

	public function calendar(){

		/*$prefs['template'] = '
			{table_open}<table border="0" cellpadding="0" cellspacing="0" class="calendar">{/table_open}

			{heading_row_start}<tr>{/heading_row_start}

			{heading_previous_cell}<th class="center"><a href="{previous_url}"><i class="fa fa-angle-left"></i></a></th>{/heading_previous_cell}
			{heading_title_cell}<th class="center" colspan="{colspan}">{heading}</th>{/heading_title_cell}
			{heading_next_cell}<th class="center"><a class="center" colspan="2" href="{next_url}"><i class="fa fa-angle-right"></i></a></th>{/heading_next_cell}

			{heading_row_end}</tr>{/heading_row_end}

			{week_row_start}<tr>{/week_row_start}
			{week_day_cell}<th class="day_header">{week_day}</th>{/week_day_cell}
			{week_row_end}</tr>{/week_row_end}

			{cal_row_start}<tr>{/cal_row_start}
			{cal_cell_start}<td>{/cal_cell_start}

			{cal_cell_content}<div class="hoverable day_listing" href="{content}">{day}</div>{/cal_cell_content}
		    {cal_cell_content_today}<div class="today day_listing" href="{content}">{day}</div>{/cal_cell_content_today}

			{cal_cell_no_content}<div class="hoverable day_listing">{day}</div>{/cal_cell_no_content}
		    {cal_cell_no_content_today}<div class="today day_listing">{day}</div>{/cal_cell_no_content_today}

			{cal_cell_blank}&nbsp;{/cal_cell_blank}

			{cal_cell_end}</td>{/cal_cell_end}
			{cal_row_end}</tr>{/cal_row_end}

			{table_close}</table>{/table_close}
		';*/

		$prefs['template'] = '

			{table_open}<table border="0" cellpadding="0" cellspacing="0" class="calendar">{/table_open}

			{heading_row_start}<tr class="calendar-title">{/heading_row_start}

			{heading_previous_cell}<th></th><th class="center calendar-arrow"><a href="{previous_url}"><i class="fa fa-angle-left fa-2x" style="color:#838282"></i></a></th>{/heading_previous_cell}
			{heading_title_cell}<th class="center" colspan="3"><h4>{heading}</h4></th>{/heading_title_cell}
			{heading_next_cell}<th class="center calendar-arrow"><a href="{next_url}"><i class="fa fa-angle-right fa-2x" style="color:#838282"></i></a></th><th></th>{/heading_next_cell}

			{heading_row_end}</tr>{/heading_row_end}

			{week_row_start}<tr>{/week_row_start}
			{week_day_cell}<td class="day_header">{week_day}</td>{/week_day_cell}
			{week_row_end}</tr>{/week_row_end}

			{cal_row_start}<tr>{/cal_row_start}
			{cal_cell_start}<td class="calendar-day">{/cal_cell_start}

			{cal_cell_content}<a href="{content}" data-toggle="modal" data-target="#myModal">{day}</a>{/cal_cell_content}
			{cal_cell_content_today}<div class="today"><a href="{content}" data-toggle="modal" data-target="#myModal">{day}</a></div>{/cal_cell_content_today}

			{cal_cell_no_content}{day}{/cal_cell_no_content}
			{cal_cell_no_content_today}<div class="today">{day}</div>{/cal_cell_no_content_today}

			{cal_cell_blank}&nbsp;{/cal_cell_blank}

			{cal_cell_end}</td>{/cal_cell_end}
			{cal_row_end}</tr>{/cal_row_end}

			{table_close}</table>{/table_close}
		';

		$prefs['show_next_prev'] = TRUE;
		$prefs['next_prev_url'] = 'http://localhost/myfiles/new_dcsw/index.php/main/calendar';

		$this->load->library('calendar', $prefs);

		//echo $this->calendar->generate($this->uri->segment(3), $this->uri->segment(4));
		
		$this->load->view('calendar');
	}
}
/* End of file main.php */
/* Location: ./application/controllers/main.php */