export class Blog {
    BlogId: number=0;
    BlogTitle: string='';
    BlogContent: string='';
    Comment: {commentId: number, comment: string}[]= []
};
