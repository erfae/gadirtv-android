.class public abstract Lcom/google/vr/sdk/widgets/video/deps/no;
.super Ljava/lang/Object;
.source "BaseDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/nr;


# instance fields
.field private final a:Z

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/oo;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/google/vr/sdk/widgets/video/deps/nv;


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->a:Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->d:Lcom/google/vr/sdk/widgets/video/deps/nv;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/nv;

    const/4 v1, 0x0

    .line 19
    :goto_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->c:I

    if-ge v1, v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->b:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/oo;

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->a:Z

    .line 22
    invoke-interface {v2, p0, v0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/oo;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->c:I

    :cond_0
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/ns;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/google/vr/sdk/widgets/video/deps/nv;)V
    .locals 3

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->c:I

    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/oo;

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->a:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/oo;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final c(Lcom/google/vr/sdk/widgets/video/deps/nv;)V
    .locals 3

    .line 13
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->d:Lcom/google/vr/sdk/widgets/video/deps/nv;

    const/4 v0, 0x0

    .line 14
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->c:I

    if-ge v0, v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/oo;

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->a:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/oo;->b(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->d:Lcom/google/vr/sdk/widgets/video/deps/nv;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/nv;

    const/4 v1, 0x0

    .line 26
    :goto_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->c:I

    if-ge v1, v2, :cond_0

    .line 27
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/oo;

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->a:Z

    invoke-interface {v2, p0, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/oo;->c(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/no;->d:Lcom/google/vr/sdk/widgets/video/deps/nv;

    return-void
.end method
