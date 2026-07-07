.class public Lcom/mikepenz/iconics/IconicsArrayBuilder;
.super Ljava/lang/Object;
.source "IconicsArrayBuilder.java"


# instance fields
.field private mIconBase:Lcom/mikepenz/iconics/IconicsDrawable;

.field private mIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mikepenz/iconics/IconicsDrawable;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIconBase:Lcom/mikepenz/iconics/IconicsDrawable;

    return-void
.end method


# virtual methods
.method public add(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsArrayBuilder;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Ljava/lang/Character;)Lcom/mikepenz/iconics/IconicsArrayBuilder;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsArrayBuilder;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()[Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mikepenz/iconics/IconicsDrawable;

    const/4 v1, 0x0

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 37
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/mikepenz/iconics/typeface/IIcon;

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIconBase:Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v2}, Lcom/mikepenz/iconics/IconicsDrawable;->clone()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/iconics/typeface/IIcon;

    invoke-virtual {v2, v3}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIconBase:Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v2}, Lcom/mikepenz/iconics/IconicsDrawable;->clone()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v2, v3}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Ljava/lang/Character;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIconBase:Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v2}, Lcom/mikepenz/iconics/IconicsDrawable;->clone()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsArrayBuilder;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mikepenz/iconics/IconicsDrawable;->iconText(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
