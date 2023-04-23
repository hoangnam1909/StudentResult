from rest_framework import pagination


class StudentPaginator(pagination.PageNumberPagination):
    page_size = 30


class TopicPaginator(pagination.PageNumberPagination):
    page_size = 10
