.class Lcom/nettv/livestore/activities/MovieSecondActivity$3;
.super Ljava/lang/Object;
.source "MovieSecondActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/MovieSecondActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/MovieSecondActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$3;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$3;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/MovieSecondActivity;->access$400(Lcom/nettv/livestore/activities/MovieSecondActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
