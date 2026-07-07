.class public final synthetic Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$Ci3ZDu6vIxHYdFu37K6h6_poc3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$Ci3ZDu6vIxHYdFu37K6h6_poc3A;->f$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$Ci3ZDu6vIxHYdFu37K6h6_poc3A;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$Ci3ZDu6vIxHYdFu37K6h6_poc3A;->f$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$Ci3ZDu6vIxHYdFu37K6h6_poc3A;->f$1:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->lambda$showSignUpDialog$5$SignUpFragment(ZLandroid/content/DialogInterface;I)V

    return-void
.end method
