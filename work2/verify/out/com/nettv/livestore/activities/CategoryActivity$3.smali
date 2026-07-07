.class Lcom/nettv/livestore/activities/CategoryActivity$3;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/CategoryActivity;->searchCategoryModel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/nettv/livestore/models/CategoryModel;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/CategoryActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/CategoryActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity$3;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/nettv/livestore/models/CategoryModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/CategoryActivity$3;->invoke(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lcom/nettv/livestore/models/CategoryModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;
    .registers 5

    .line 2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_40

    .line 3
    iget-object p3, p0, Lcom/nettv/livestore/activities/CategoryActivity$3;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p3, Lcom/nettv/livestore/activities/CategoryActivity;->category_position:I

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/activities/CategoryActivity$3;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    # invokes: Lcom/nettv/livestore/activities/CategoryActivity;->checkAdultCategory(Ljava/lang/String;)Z
    invoke-static {p2, p3}, Lcom/nettv/livestore/activities/CategoryActivity;->access$100(Lcom/nettv/livestore/activities/CategoryActivity;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/activities/CategoryActivity$3;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    # invokes: Lcom/nettv/livestore/activities/CategoryActivity;->showLockDlgFragment(Lcom/nettv/livestore/models/CategoryModel;)V
    invoke-static {p2, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->access$200(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;)V

    goto :goto_48

    .line 6
    :cond_24
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/nettv/livestore/activities/CategoryActivity$3;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    const-class v0, Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object p3, p0, Lcom/nettv/livestore/activities/CategoryActivity$3;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    # invokes: Lcom/nettv/livestore/activities/CategoryActivity;->getCategoryPosition(Lcom/nettv/livestore/models/CategoryModel;)I
    invoke-static {p3, p1}, Lcom/nettv/livestore/activities/CategoryActivity;->access$300(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;)I

    move-result p1

    const-string p3, "category_pos"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity$3;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_48

    .line 9
    :cond_40
    iget-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity$3;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/nettv/livestore/activities/CategoryActivity;->pre_category_pos:I

    :goto_48
    const/4 p1, 0x0

    return-object p1
.end method
