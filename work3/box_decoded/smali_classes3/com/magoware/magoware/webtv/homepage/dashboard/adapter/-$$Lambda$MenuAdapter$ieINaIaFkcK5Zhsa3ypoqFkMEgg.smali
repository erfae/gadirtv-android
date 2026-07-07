.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$MenuAdapter$ieINaIaFkcK5Zhsa3ypoqFkMEgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$MenuAdapter$ieINaIaFkcK5Zhsa3ypoqFkMEgg;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$MenuAdapter$ieINaIaFkcK5Zhsa3ypoqFkMEgg;->f$1:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$MenuAdapter$ieINaIaFkcK5Zhsa3ypoqFkMEgg;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$MenuAdapter$ieINaIaFkcK5Zhsa3ypoqFkMEgg;->f$1:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter;->lambda$onBindViewHolder$0$MenuAdapter(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;Landroid/view/View;)V

    return-void
.end method
