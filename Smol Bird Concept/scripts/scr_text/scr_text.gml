// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_set_defaults_for_text()
{
    line_break_pos[0, page_number] = 999;
    line_break_num[page_number] = 0;
    line_break_offset[page_number] = 0;

    txtb_spr[page_number] = spr_Textbox;
    speaker_sprite[page_number] = noone;
    speaker_side[page_number] = 1;
}





///@param text
///@param [character]
///@param [side]
function scr_text(_text)
{
    scr_set_defaults_for_text();
    text[page_number] = _text;

    if argument_count > 1
    {
        //get character info
        switch(argument[1])
        {

            //Frog
            case "renee":
            speaker_sprite[page_number] = spr_frog_talk;
            txtb_spr[page_number] = spr_Textbox;
            break;

            //Bird
            case "bird":
            speaker_sprite[page_number] = spr_bird_talk;
            txtb_spr[page_number] = spr_Textbox;
            break;
        }

    }

    //side the character is on
    if argument_count > 2
    {
        speaker_side[page_number] = argument[2];
    }

    page_number++;
}





///@param option
///@param link_id
function scr_option(_option, _link_id)
{
    option [option_number] = _option;
    option_link_id[option_number] = _link_id;

    option_number++;
}






///@param text_id
function create_textbox(_text_id)
{
    with (instance_create_depth(0, 0 ,-9999, obj_textbox))
        {
            scr_game_text(_text_id)
        }
}