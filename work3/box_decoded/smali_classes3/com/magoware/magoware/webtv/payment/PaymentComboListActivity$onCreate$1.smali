.class final Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity$onCreate$1;
.super Ljava/lang/Object;
.source "PaymentComboListActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity$onCreate$1;->this$0:Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity$onCreate$1;->this$0:Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;

    sget v1, Lcom/magoware/magoware/webtv/R$id;->combo_list_recycler:I

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "combo_list_recycler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity$onCreate$1;->this$0:Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity$onCreate$1;->this$0:Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;

    iget-object v2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const-string v3, "response.response_object"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    invoke-static {v0, v2}, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;->access$setComboList$p(Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;Ljava/util/List;)V

    .line 38
    iget-object v0, p0, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity$onCreate$1;->this$0:Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;

    sget v2, Lcom/magoware/magoware/webtv/R$id;->combo_list_recycler:I

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/magoware/magoware/webtv/payment/ComboAdapter;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity$onCreate$1;->this$0:Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

    invoke-direct {v1, p1, v2}, Lcom/magoware/magoware/webtv/payment/ComboAdapter;-><init>(Ljava/util/List;Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity$onCreate$1;->this$0:Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity;

    check-cast v0, Landroid/content/Context;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/payment/PaymentComboListActivity$onCreate$1;->onChanged(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
