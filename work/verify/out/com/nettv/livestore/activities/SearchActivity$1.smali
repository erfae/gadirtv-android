.class Lcom/nettv/livestore/activities/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/SearchActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity$1;->this$0:Lcom/nettv/livestore/activities/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$1;->this$0:Lcom/nettv/livestore/activities/SearchActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/nettv/livestore/activities/SearchActivity;->searchModels(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/SearchActivity;->access$000(Lcom/nettv/livestore/activities/SearchActivity;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
