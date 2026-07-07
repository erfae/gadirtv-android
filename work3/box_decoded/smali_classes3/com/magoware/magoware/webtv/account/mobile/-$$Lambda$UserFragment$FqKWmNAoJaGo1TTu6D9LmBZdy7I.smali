.class public final synthetic Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$UserFragment$FqKWmNAoJaGo1TTu6D9LmBZdy7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/account/mobile/UserFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/account/mobile/UserFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$UserFragment$FqKWmNAoJaGo1TTu6D9LmBZdy7I;->f$0:Lcom/magoware/magoware/webtv/account/mobile/UserFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$UserFragment$FqKWmNAoJaGo1TTu6D9LmBZdy7I;->f$0:Lcom/magoware/magoware/webtv/account/mobile/UserFragment;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;->lambda$getUserData$1$UserFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
