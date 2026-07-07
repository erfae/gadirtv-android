.class final Lcom/google/vr/sdk/widgets/video/deps/ag$c;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/ag$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/vr/sdk/widgets/video/deps/if$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/ag$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/af$a;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/ag$b;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/ag$b;

.field private f:Lcom/google/vr/sdk/widgets/video/deps/af;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->b:Ljava/util/HashMap;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->c:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 5
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/af;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->f:Lcom/google/vr/sdk/widgets/video/deps/af;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/ag$b;Lcom/google/vr/sdk/widgets/video/deps/af;)Lcom/google/vr/sdk/widgets/video/deps/ag$b;
    .locals 2

    .line 68
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->c:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    .line 72
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ag$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/af;I)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ag$c;)Ljava/util/ArrayList;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/ag$b;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->f:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/ag$b;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 21
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    .line 22
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->f:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v5, v3, Lcom/google/vr/sdk/widgets/video/deps/ag$b;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 23
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->f:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->c:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 24
    invoke-virtual {v5, v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v4

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    if-ne v4, p1, :cond_1

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    move-object v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Lcom/google/vr/sdk/widgets/video/deps/ag$b;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    return-object p1
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/if$a;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->f:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->f:Lcom/google/vr/sdk/widgets/video/deps/af;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/af;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    :goto_1
    invoke-direct {v2, p2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/af;I)V

    .line 51
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->b:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->f:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->h()V

    :cond_2
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/af;)V
    .locals 4

    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    invoke-direct {p0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a(Lcom/google/vr/sdk/widgets/video/deps/ag$b;Lcom/google/vr/sdk/widgets/video/deps/af;)Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->b:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->e:Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    if-eqz v0, :cond_1

    .line 39
    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a(Lcom/google/vr/sdk/widgets/video/deps/ag$b;Lcom/google/vr/sdk/widgets/video/deps/af;)Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->e:Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->f:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 41
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->h()V

    return-void
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/ag$b;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->d:Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->h()V

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->e:Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ag$b;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->e:Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/ag$b;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->e:Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    return-object v0
.end method

.method public c(Lcom/google/vr/sdk/widgets/video/deps/if$a;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->e:Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    return-void
.end method

.method public d()Lcom/google/vr/sdk/widgets/video/deps/ag$b;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ag$b;

    :goto_0
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->g:Z

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->g:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->g:Z

    .line 46
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag$c;->h()V

    return-void
.end method
