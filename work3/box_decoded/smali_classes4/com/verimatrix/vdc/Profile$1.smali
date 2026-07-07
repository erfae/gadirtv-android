.class Lcom/verimatrix/vdc/Profile$1;
.super Landroid/os/Handler;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/Profile;->get(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)Lcom/verimatrix/vdc/Monitor$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/Profile;

.field final synthetic val$listener:Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/Profile;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/verimatrix/vdc/Profile$1;->this$0:Lcom/verimatrix/vdc/Profile;

    iput-object p2, p0, Lcom/verimatrix/vdc/Profile$1;->val$listener:Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;

    if-eqz v0, :cond_1

    .line 75
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;

    .line 77
    iget-boolean v0, p1, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->success:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/verimatrix/vdc/Profile$1;->val$listener:Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;

    invoke-interface {v0, p1}, Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;->onSuccess(Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/verimatrix/vdc/Profile$1;->val$listener:Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;

    invoke-interface {p1}, Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;->onError()V

    :cond_1
    :goto_0
    return-void
.end method
