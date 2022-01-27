package com.wwt.robot.common.page;

import java.io.Serializable;
import java.util.List;

public interface IPage<T> extends Serializable {

    int getPageNext();

    int getPagePrevious();

    int getPageCurrent();

    List<Long> getPages();

    List<?> getList();

    int getPageSize();

    int getCount();

    int getPageCount();

}
