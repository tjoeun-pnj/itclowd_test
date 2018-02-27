package com.minu.book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.book.vo.ActionForward;

public interface Action {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception;
}
