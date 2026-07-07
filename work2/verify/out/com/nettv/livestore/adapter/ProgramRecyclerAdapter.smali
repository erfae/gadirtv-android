.class public Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ProgramRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickFunctionListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public current_program_pos:I

.field public disabled_pos:I

.field public epgModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;"
        }
    .end annotation
.end field

.field public is_disable:Z


# direct methods
.method public static synthetic $r8$lambda$CXWIqGL30bJaUwyw_JVzq_UMs8o(Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;Lcom/nettv/livestore/models/CatchUpEpg;ILcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;Landroid/view/View;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/CatchUpEpg;ILcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RtOsjCdMbL0JnjctyCZ59felm-s(Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;Lcom/nettv/livestore/models/CatchUpEpg;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->lambda$onBindViewHolder$1(Lcom/nettv/livestore/models/CatchUpEpg;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->disabled_pos:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->is_disable:Z

    .line 4
    iput v0, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->current_program_pos:I

    .line 5
    iput-object p1, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->epgModels:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/nettv/livestore/models/CatchUpEpg;ILcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;Landroid/view/View;Z)V
    .registers 7

    const/16 p4, 0x8

    if-eqz p5, :cond_3b

    .line 1
    iget-object p5, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p5, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p5, 0x7f080193

    invoke-virtual {p2, p5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    iget-object p2, p3, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;->txt_program_description:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CatchUpEpg;->getDescription()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/CatchUpEpg;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    .line 5
    iget-object p1, p3, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;->txt_program_description:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4b

    .line 6
    :cond_35
    iget-object p1, p3, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;->txt_program_description:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4b

    .line 7
    :cond_3b
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "#00FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iget-object p1, p3, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;->txt_program_description:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    :goto_4b
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/nettv/livestore/models/CatchUpEpg;ILandroid/view/View;)V
    .registers 5

    iget-object p3, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->clickFunctionListener:Lkotlin/jvm/functions/Function3;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->epgModels:Ljava/util/List;

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
    check-cast p1, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->onBindViewHolder(Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;I)V
    .registers 12
    .param p1    # Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->epgModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CatchUpEpg;

    .line 3
    iget-object v1, p1, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;->txt_program:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p1, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;->txt_time:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iget-object v4, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/nettv/livestore/utils/Utils;->Offset(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v0}, Lcom/nettv/livestore/models/CatchUpEpg;->getHas_archive()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v1, v4, :cond_38

    .line 6
    iget-object v1, p1, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;->catch_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3d

    .line 7
    :cond_38
    iget-object v1, p1, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;->catch_image:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :goto_3d
    iget v1, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->current_program_pos:I

    if-ne v1, p2, :cond_47

    .line 9
    iget-object v1, p1, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4c

    .line 10
    :cond_47
    iget-object v1, p1, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;->txt_live:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_4c
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/nettv/livestore/adapter/CastRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 12
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v0, p2, v3}, Lcom/nettv/livestore/adapter/VodRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-boolean v0, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->is_disable:Z

    if-eqz v0, :cond_7c

    .line 14
    iget v0, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->disabled_pos:I

    if-ne p2, v0, :cond_87

    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "#2e2f2f"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_87

    .line 16
    :cond_7c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "#00FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_87
    :goto_87
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
    invoke-virtual {p0, p1, p2}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;

    const v0, 0x7f0e007e

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter$XCProgramViewHolder;-><init>(Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCurrentProgramPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->current_program_pos:I

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setFocusDisable(IZ)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->disabled_pos:I

    .line 2
    iput-boolean p2, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->is_disable:Z

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setProgramList(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/nettv/livestore/adapter/ProgramRecyclerAdapter;->epgModels:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
