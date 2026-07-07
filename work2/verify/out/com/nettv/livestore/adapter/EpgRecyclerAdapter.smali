.class public Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EpgRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public epgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->epgList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->epgList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;I)V
    .registers 11
    .param p1    # Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->epgList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CatchUpEpg;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :try_start_15
    iget-object v1, p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;->txt_time:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    iget-object v7, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v4, v7}, Lcom/nettv/livestore/utils/Utils;->Offset(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CatchUpEpg;->getStop_timestamp()J

    move-result-wide v3

    mul-long v3, v3, v5

    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v4, v0}, Lcom/nettv/livestore/utils/Utils;->Offset(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    nop

    :goto_4a
    if-nez p2, :cond_63

    .line 5
    iget-object p2, p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0602f8

    .line 6
    invoke-static {v0, v1, p2}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 7
    iget-object p2, p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;->txt_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->context:Landroid/content/Context;

    .line 8
    invoke-static {v0, v1, p2}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_74

    .line 10
    :cond_63
    iget-object p2, p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0602f7

    .line 11
    invoke-static {v0, v1, p2}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 12
    iget-object p1, p1, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;->txt_time:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->context:Landroid/content/Context;

    .line 13
    invoke-static {p2, v1, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/TextView;)V

    :goto_74
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;

    const v0, 0x7f0e0074

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter$EpgViewHolder;-><init>(Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setEpgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/adapter/EpgRecyclerAdapter;->epgList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
