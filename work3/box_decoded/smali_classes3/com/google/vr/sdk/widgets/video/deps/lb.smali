.class public final Lcom/google/vr/sdk/widgets/video/deps/lb;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/lh;
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/lb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/lh;",
        "Lcom/google/vr/sdk/widgets/video/deps/oj$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/ol<",
        "Lcom/google/vr/sdk/widgets/video/deps/le;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ko;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/lg;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/oi;

.field private final d:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/vr/sdk/widgets/video/deps/lc$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/lb$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/lh$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/vr/sdk/widgets/video/deps/ol$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/oj;

.field private i:Landroid/os/Handler;

.field private j:Lcom/google/vr/sdk/widgets/video/deps/lh$d;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/lc;

.field private l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

.field private m:Lcom/google/vr/sdk/widgets/video/deps/ld;

.field private n:Z

.field private o:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/lg;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->a:Lcom/google/vr/sdk/widgets/video/deps/ko;

    .line 5
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->b:Lcom/google/vr/sdk/widgets/video/deps/lg;

    .line 6
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->c:Lcom/google/vr/sdk/widgets/video/deps/oi;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->e:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->o:J

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/ol$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ko;",
            "Lcom/google/vr/sdk/widgets/video/deps/oi;",
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/ol$a;)Lcom/google/vr/sdk/widgets/video/deps/lg;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/lb;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/lg;)V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/ko;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->a:Lcom/google/vr/sdk/widgets/video/deps/ko;

    return-object p0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/lb;Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)Lcom/google/vr/sdk/widgets/video/deps/ld;
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)Lcom/google/vr/sdk/widgets/video/deps/ld;
    .locals 2

    .line 140
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ld;->a(Lcom/google/vr/sdk/widgets/video/deps/ld;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-boolean p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ld;->b()Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-result-object p1

    :cond_0
    return-object p1

    .line 144
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->b(Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)J

    move-result-wide v0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->c(Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)I

    move-result p1

    .line 146
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ld;->a(JI)Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/ol$a;)Lcom/google/vr/sdk/widgets/video/deps/lg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/lg;"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/lb$1;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/lb$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ol$a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/lb;Lcom/google/vr/sdk/widgets/video/deps/lc$a;Lcom/google/vr/sdk/widgets/video/deps/ld;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;Lcom/google/vr/sdk/widgets/video/deps/ld;)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;Lcom/google/vr/sdk/widgets/video/deps/ld;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    if-ne p1, v0, :cond_1

    .line 124
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->m:Lcom/google/vr/sdk/widgets/video/deps/ld;

    if-nez p1, :cond_0

    .line 125
    iget-boolean p1, p2, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->n:Z

    .line 126
    iget-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/ld;->c:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->o:J

    .line 127
    :cond_0
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->m:Lcom/google/vr/sdk/widgets/video/deps/ld;

    .line 128
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->j:Lcom/google/vr/sdk/widgets/video/deps/lh$d;

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lh$d;->a(Lcom/google/vr/sdk/widgets/video/deps/ld;)V

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/lh$a;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/lh$a;->h()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/lc$a;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 118
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 119
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/lb$a;

    invoke-direct {v3, p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/lb;Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V

    .line 120
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/lb;Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 137
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/lh$a;

    invoke-interface {v3, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/lh$a;->a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)J
    .locals 8

    .line 147
    iget-boolean v0, p2, Lcom/google/vr/sdk/widgets/video/deps/ld;->j:Z

    if-eqz v0, :cond_0

    .line 148
    iget-wide p1, p2, Lcom/google/vr/sdk/widgets/video/deps/ld;->c:J

    return-wide p1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->m:Lcom/google/vr/sdk/widgets/video/deps/ld;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ld;->c:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-wide v0

    .line 152
    :cond_2
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/ld;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 153
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->d(Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)Lcom/google/vr/sdk/widgets/video/deps/ld$a;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 155
    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ld;->c:J

    iget-wide v0, v3, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->f:J

    add-long/2addr p1, v0

    return-wide p1

    :cond_3
    int-to-long v2, v2

    .line 156
    iget-wide v4, p2, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    iget-wide v6, p1, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    sub-long/2addr v4, v6

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    .line 157
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ld;->a()J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/lc;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->k:Lcom/google/vr/sdk/widgets/video/deps/lc;

    return-object p0
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)I
    .locals 3

    .line 159
    iget-boolean v0, p2, Lcom/google/vr/sdk/widgets/video/deps/ld;->d:Z

    if-eqz v0, :cond_0

    .line 160
    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/ld;->e:I

    return p1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->m:Lcom/google/vr/sdk/widgets/video/deps/ld;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ld;->e:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v0

    .line 164
    :cond_2
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lb;->d(Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)Lcom/google/vr/sdk/widgets/video/deps/ld$a;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 166
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ld;->e:I

    iget v0, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->e:I

    add-int/2addr p1, v0

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ld;->l:Ljava/util/List;

    .line 167
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->e:I

    sub-int/2addr p1, p2

    return p1

    :cond_3
    return v0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/ol$a;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->f:Lcom/google/vr/sdk/widgets/video/deps/ol$a;

    return-object p0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/lb;)Landroid/os/Handler;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->i:Landroid/os/Handler;

    return-object p0
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/ld;Lcom/google/vr/sdk/widgets/video/deps/ld;)Lcom/google/vr/sdk/widgets/video/deps/ld$a;
    .locals 4

    .line 170
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 171
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ld;->l:Ljava/util/List;

    .line 172
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/deps/ld$a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic e(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->g:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    return-object p0
.end method

.method private e(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->k:Lcom/google/vr/sdk/widgets/video/deps/lc;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/lc;->b:Ljava/util/List;

    .line 111
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->m:Lcom/google/vr/sdk/widgets/video/deps/ld;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 114
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/lb$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/oi;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->c:Lcom/google/vr/sdk/widgets/video/deps/oi;

    return-object p0
.end method

.method private f()Z
    .locals 10

    .line 99
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->k:Lcom/google/vr/sdk/widgets/video/deps/lc;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/lc;->b:Ljava/util/List;

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 103
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/lb$a;

    .line 104
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/lb$a;)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    .line 105
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b(Lcom/google/vr/sdk/widgets/video/deps/lb$a;)Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 106
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method static synthetic g(Lcom/google/vr/sdk/widgets/video/deps/lb;)Lcom/google/vr/sdk/widgets/video/deps/lc$a;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    return-object p0
.end method

.method static synthetic h(Lcom/google/vr/sdk/widgets/video/deps/lb;)Z
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lb;->f()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)Lcom/google/vr/sdk/widgets/video/deps/ld;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/lb$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a()Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lb;->e(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 0

    .line 174
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ol;

    invoke-virtual/range {p0 .. p7}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/vr/sdk/widgets/video/deps/oj$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 87
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/lb;->c:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 88
    invoke-interface/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/oi;->b(IJLjava/io/IOException;I)J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 90
    :goto_0
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/lb;->g:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v7, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v8

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x4

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v15

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-object/from16 v17, p6

    move/from16 v18, v5

    .line 94
    invoke-virtual/range {v6 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    if-eqz v5, :cond_1

    .line 96
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/oj;->d:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    goto :goto_1

    .line 97
    :cond_1
    invoke-static {v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(ZJ)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 25
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->m:Lcom/google/vr/sdk/widgets/video/deps/ld;

    .line 26
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->k:Lcom/google/vr/sdk/widgets/video/deps/lc;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->o:J

    .line 28
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->h:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->d()V

    .line 29
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->h:Lcom/google/vr/sdk/widgets/video/deps/oj;

    .line 30
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/lb$a;

    .line 31
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->c()V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->i:Landroid/os/Handler;

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/ig$a;Lcom/google/vr/sdk/widgets/video/deps/lh$d;)V
    .locals 3

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->i:Landroid/os/Handler;

    .line 12
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->g:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    .line 13
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->j:Lcom/google/vr/sdk/widgets/video/deps/lh$d;

    .line 14
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/ol;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->a:Lcom/google/vr/sdk/widgets/video/deps/ko;

    const/4 v1, 0x4

    .line 15
    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ko;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->b:Lcom/google/vr/sdk/widgets/video/deps/lg;

    .line 16
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/lg;->a()Lcom/google/vr/sdk/widgets/video/deps/ol$a;

    move-result-object v2

    invoke-direct {p3, v0, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ol;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Landroid/net/Uri;ILcom/google/vr/sdk/widgets/video/deps/ol$a;)V

    .line 17
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->h:Lcom/google/vr/sdk/widgets/video/deps/oj;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 18
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/oj;

    const-string v0, "DefaultHlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->h:Lcom/google/vr/sdk/widgets/video/deps/oj;

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->c:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v1, p3, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    .line 20
    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(I)I

    move-result v0

    .line 21
    invoke-virtual {p1, p3, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;Lcom/google/vr/sdk/widgets/video/deps/oj$a;I)J

    move-result-wide v0

    .line 22
    iget-object p1, p3, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget p3, p3, Lcom/google/vr/sdk/widgets/video/deps/ol;->b:I

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;IJ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/lh$a;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJ)V
    .locals 0

    .line 176
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ol;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJZ)V
    .locals 0

    .line 175
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ol;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/le;

    .line 59
    instance-of v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ld;

    if-eqz v2, :cond_0

    .line 61
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/le;->n:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/lc;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/lc;

    move-result-object v3

    goto :goto_0

    .line 62
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/lc;

    .line 63
    :goto_0
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/lb;->k:Lcom/google/vr/sdk/widgets/video/deps/lc;

    .line 64
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/lb;->b:Lcom/google/vr/sdk/widgets/video/deps/lg;

    invoke-interface {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/lg;->a(Lcom/google/vr/sdk/widgets/video/deps/lc;)Lcom/google/vr/sdk/widgets/video/deps/ol$a;

    move-result-object v4

    iput-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/lb;->f:Lcom/google/vr/sdk/widgets/video/deps/ol$a;

    .line 65
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/lc;->b:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    iput-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/lb;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v5, v3, Lcom/google/vr/sdk/widgets/video/deps/lc;->b:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    iget-object v5, v3, Lcom/google/vr/sdk/widgets/video/deps/lc;->c:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/lc;->d:Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/lb;->a(Ljava/util/List;)V

    .line 71
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/lb;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/lb$a;

    if-eqz v2, :cond_1

    .line 73
    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-wide/from16 v11, p4

    invoke-static {v3, v1, v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/lb$a;Lcom/google/vr/sdk/widgets/video/deps/ld;J)V

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p4

    .line 74
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->d()V

    .line 75
    :goto_1
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/lb;->g:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-object/from16 v1, p1

    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v6

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x4

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 79
    invoke-virtual/range {v4 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ol;JJZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ol<",
            "Lcom/google/vr/sdk/widgets/video/deps/le;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 81
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lb;->g:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-object v2, p1

    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/ol;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 82
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->e()Landroid/net/Uri;

    move-result-object v4

    .line 83
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->f()Ljava/util/Map;

    move-result-object v5

    .line 84
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ol;->d()J

    move-result-wide v10

    const/4 v6, 0x4

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide v6, p2

    move-wide/from16 v8, p4

    .line 85
    invoke-virtual/range {v1 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->b(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/lc;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->k:Lcom/google/vr/sdk/widgets/video/deps/lc;

    return-object v0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/lh$a;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/lb$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->b()Z

    move-result p1

    return p1
.end method

.method public c()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->o:J

    return-wide v0
.end method

.method public c(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/lb$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->e()V

    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->h:Lcom/google/vr/sdk/widgets/video/deps/oj;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lb;->c(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V

    :cond_1
    return-void
.end method

.method public d(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/lb$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lb$a;->d()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lb;->n:Z

    return v0
.end method
