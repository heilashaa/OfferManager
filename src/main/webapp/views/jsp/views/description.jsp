<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="card mt-5">
    <div class="card-body">
        <h3>Описание проекта</h3>
        <p>Проект "Offer Manager" предназначен для подготовки коммерческих предложений клиентам по экспедированию перевозок. Для работы есть клиенты (добавить, удалить, отредактировать), провайдеры (добавить, удалить, отредактировать), услуги провайдеров (добавить, удалить, отредактировать), запросы клиентов (добавить, удалить, отредактировать), ответы клиентам (добавить, удалить, отредактировать).</p>
        <p>Основная бизнес-логика: клиент присылает запрос о стоимости услуг. На оновании имеющихся провайдеров и предоставляемых ими услуг формируется ставка для клиента и отправляется клиенту в виде коммерческого предложения. Если не достаточно имеющихся услуг от провайдера, у последнего запрашиваются дополнительная информация о возможных услугах и заполняется в таблицу offers.</p>
        <p>В базе данных хранятся все коммерческие предложения для клиентов.</p>
        <p>Для разработки приложения использованы: Spring MVC, Hibernate, MySQL.</p>
        <h3>Таблицы в базе данных MySQL</h3>
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Таблица: провайдеры (providers)</h4>
                <div class="single-table">
                    <div class="table-responsive">
                        <table class="table text-center">
                            <thead class="text-uppercase bg-secondary">
                            <tr class="text-white">
                                <th scope="col">id</th>
                                <th scope="col">provider</th>
                                <th scope="col">description</th>
                                <th scope="col">country</th>
                                <th scope="col">contact</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>РЖД Логистика</td>
                                <td>Жд перевозки по РЖД</td>
                                <td>Россия</td>
                                <td>+74955558866</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Alliance Logistics</td>
                                <td>Жд перевозки в Азербайджане</td>
                                <td>Азербайджан</td>
                                <td>logistics@al.com</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Таблица: услуги провайдеров (services: many to many)</h4>
                <div class="single-table">
                    <div class="table-responsive">
                        <table class="table text-center">
                            <thead class="text-uppercase bg-secondary">
                            <tr class="text-white">
                                <th scope="col">id</th>
                                <th scope="col">service</th>
                                <th scope="col">price</th>
                                <th scope="col">provider_id(FK to providers)</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>жд тариф Н.Новгород - Ворсино груженый конт 40ft COC/спс</td>
                                <td>520</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>жд тариф Н.Новгород - Ворсино груженый конт 20ft COC/спс</td>
                                <td>370</td>
                                <td>1</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Таблица: клиенты (clients)</h4>
                <div class="single-table">
                    <div class="table-responsive">
                        <table class="table text-center">
                            <thead class="text-uppercase bg-secondary">
                            <tr class="text-white">
                                <th scope="col">id</th>
                                <th scope="col">client</th>
                                <th scope="col">contact</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>UAB Ahlers Klaipeda</td>
                                <td>+73705556699</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>SIA RigaToLog</td>
                                <td>logistics@rtl.com</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Таблица: пользователи (users)</h4>
                <div class="single-table">
                    <div class="table-responsive">
                        <table class="table text-center">
                            <thead class="text-uppercase bg-secondary">
                            <tr class="text-white">
                                <th scope="col">id</th>
                                <th scope="col">login</th>
                                <th scope="col">password</th>
                                <th scope="col">name</th>
                                <th scope="col">surname</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>Ivanov</td>
                                <td>123456</td>
                                <td>Иван</td>
                                <td>Иванов</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Petrov</td>
                                <td>abcdef</td>
                                <td>Петр</td>
                                <td>Петров</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Таблица: коммерческие предложения (offers: many to many)</h4>
                <div class="single-table">
                    <div class="table-responsive">
                        <table class="table text-center">
                            <thead class="text-uppercase bg-secondary">
                            <tr class="text-white">
                                <th scope="col">id</th>
                                <th scope="col">request_id(FK to requests)</th>
                                <th scope="col">service_id(FK to services)</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>1</td>
                                <td>2</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h4 class="header-title">Таблица: запросы клиентов (requests: many to one)</h4>
                <div class="single-table">
                    <div class="table-responsive">
                        <table class="table text-center">
                            <thead class="text-uppercase bg-secondary">
                            <tr class="text-white">
                                <th scope="col">id</th>
                                <th scope="col">request</th>
                                <th scope="col">date</th>
                                <th scope="col">client_id(FK to clients)</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>Перевозка Клайпеда-Колядичи 40ft COC/мпс + возврат порожнего оборудования в порт</td>
                                <td>01.03.2019</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Перевозка Рига-Ворсино 40ft COC/мпс + возврат порожнего оборудования в порт</td>
                                <td>03.03.2019</td>
                                <td>1</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>