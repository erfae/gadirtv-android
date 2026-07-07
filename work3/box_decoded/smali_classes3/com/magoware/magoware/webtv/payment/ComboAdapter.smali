.class public final Lcom/magoware/magoware/webtv/payment/ComboAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ComboAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000eH\u0017J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000eH\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/payment/ComboAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;",
        "comboList",
        "",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
        "onRecyclerItemClickListener",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;",
        "(Ljava/util/List;Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;)V",
        "context",
        "Landroid/content/Context;",
        "pointsPattern",
        "",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "postition",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "ComboViewHolder",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final comboList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final onRecyclerItemClickListener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

.field private final pointsPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
            ">;",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;",
            ")V"
        }
    .end annotation

    const-string v0, "comboList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRecyclerItemClickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->comboList:Ljava/util/List;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->onRecyclerItemClickListener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

    const-string p1, "#0.00"

    .line 19
    iput-object p1, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->pointsPattern:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getOnRecyclerItemClickListener$p(Lcom/magoware/magoware/webtv/payment/ComboAdapter;)Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->onRecyclerItemClickListener:Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->comboList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/magoware/magoware/webtv/R$id;->combo_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;

    const-string v1, "holder.view.combo_title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->comboList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/magoware/magoware/webtv/R$id;->combo_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;

    const-string v1, "holder.view.combo_duration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->comboList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->getDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->context:Landroid/content/Context;

    if-nez v4, :cond_0

    const-string v5, "context"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const v5, 0x7f14010f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/magoware/magoware/webtv/R$id;->combo_price:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;

    const-string v1, "holder.view.combo_price"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->pointsPattern:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->comboList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/custom_views/MagoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/magoware/magoware/webtv/R$id;->combo_get_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/magoware/magoware/webtv/payment/ComboAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/magoware/magoware/webtv/payment/ComboAdapter$onBindViewHolder$1;-><init>(Lcom/magoware/magoware/webtv/payment/ComboAdapter;Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;I)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e019f

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "parent.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/payment/ComboAdapter;->context:Landroid/content/Context;

    .line 27
    new-instance p1, Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/payment/ComboAdapter$ComboViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
