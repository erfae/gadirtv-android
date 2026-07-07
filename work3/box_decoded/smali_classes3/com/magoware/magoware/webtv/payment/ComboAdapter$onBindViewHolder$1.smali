.class final Lcom/magoware/magoware/webtv/payment/ComboAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "ComboAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/payment/ComboAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $holder:Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;

.field final synthetic $postition:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/payment/ComboAdapter;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/payment/ComboAdapter;Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter$onBindViewHolder$1;->this$0:Lcom/magoware/magoware/webtv/payment/ComboAdapter;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter$onBindViewHolder$1;->$holder:Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;

    iput p3, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter$onBindViewHolder$1;->$postition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 37
    iget-object p1, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter$onBindViewHolder$1;->this$0:Lcom/magoware/magoware/webtv/payment/ComboAdapter;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->access$getOnRecyclerItemClickListener$p(Lcom/magoware/magoware/webtv/payment/ComboAdapter;)Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter$onBindViewHolder$1;->$holder:Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter$onBindViewHolder$1;->$postition:I

    invoke-interface {p1, v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
