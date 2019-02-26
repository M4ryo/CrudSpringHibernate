/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Emisor;
import java.util.ArrayList;
import java.util.List;
import model.EmisorModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/emisor")
public class EmisorController {

    List<Emisor> lst = new ArrayList<Emisor>();
    Emisor emisor = new Emisor();

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addpPreview() {
        return "add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@ModelAttribute(value = "emisor") Emisor emisor) {
        EmisorModel model = new EmisorModel();
        model.dbAction("add", emisor, 0);
        return "redirect:all.htm";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String delete(@RequestParam(value = "idEmisor") int idEmisor) {
        EmisorModel model = new EmisorModel();
        emisor = model.dbAction("get", emisor, idEmisor).get(0);
        model.dbAction("delete", emisor, 0);
        return "redirect:all.htm";
    }

    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String updatePreview(@RequestParam(value = "idEmisor") int idEmisor, Model m) {
        EmisorModel model = new EmisorModel();
        emisor = model.dbAction("get", emisor, idEmisor).get(0);
        m.addAttribute("emisor", emisor);
        return "update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(Emisor emisor, Model m) {
        EmisorModel model = new EmisorModel();
        model.dbAction("update", emisor, 0);
        return "redirect:all.htm";
    }

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public String getAll(Model m) {
        EmisorModel model = new EmisorModel();
        lst = model.dbAction("all", emisor, 0);
        m.addAttribute("emisores", lst);
        return "emisor";
    }

    
    @RequestMapping(value = "/x", method = RequestMethod.GET)
    public @ResponseBody String x() {
        return "dsagkakñgaskñ";
    }
    
}
