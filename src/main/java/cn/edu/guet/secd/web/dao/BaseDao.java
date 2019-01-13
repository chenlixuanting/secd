package cn.edu.guet.secd.web.dao;

/**
 * @author Administrator
 * @date 9/13/2018
 */
public interface BaseDao<T> {

    /**
     * 增
     *
     * @param entity
     * @return
     */
     Boolean save(T entity);


    /**
     * 删
     *
     * @param entity
     * @return
     */
     Boolean delete(T entity);


    /**
     * 查
     *
     * @param id
     * @return
     */
     T getById(Integer id);

    /**
     * 改
     *
     * @param entity
     * @return
     */
     Boolean update(T entity);
}
