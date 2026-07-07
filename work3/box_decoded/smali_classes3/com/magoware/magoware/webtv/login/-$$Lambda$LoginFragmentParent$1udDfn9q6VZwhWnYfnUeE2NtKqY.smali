.class public final synthetic Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$1udDfn9q6VZwhWnYfnUeE2NtKqY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

.field public final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$1udDfn9q6VZwhWnYfnUeE2NtKqY;->f$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$1udDfn9q6VZwhWnYfnUeE2NtKqY;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$1udDfn9q6VZwhWnYfnUeE2NtKqY;->f$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$1udDfn9q6VZwhWnYfnUeE2NtKqY;->f$1:Landroid/app/Dialog;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->lambda$showNoInternetDialog$2$LoginFragmentParent(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
