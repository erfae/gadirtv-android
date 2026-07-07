.class Lcom/google/vr/sdk/widgets/video/deps/br;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/br$a;,
        Lcom/google/vr/sdk/widgets/video/deps/br$b;,
        Lcom/google/vr/sdk/widgets/video/deps/br$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/vr/sdk/widgets/video/deps/cf;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/cc<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cb$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/vr/sdk/widgets/video/deps/cj;

.field final c:Ljava/util/UUID;

.field final d:Lcom/google/vr/sdk/widgets/video/deps/br$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/br$b;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/cg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/cg<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/br$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/br$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/ov;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ov<",
            "Lcom/google/vr/sdk/widgets/video/deps/by;",
            ">;"
        }
    .end annotation
.end field

.field private final j:I

.field private k:I

.field private l:I

.field private m:Landroid/os/HandlerThread;

.field private n:Lcom/google/vr/sdk/widgets/video/deps/br$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/br$a;"
        }
    .end annotation
.end field

.field private o:Lcom/google/vr/sdk/widgets/video/deps/cf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private p:Lcom/google/vr/sdk/widgets/video/deps/cc$a;

.field private q:[B

.field private r:[B

.field private s:Lcom/google/vr/sdk/widgets/video/deps/cg$a;

.field private t:Lcom/google/vr/sdk/widgets/video/deps/cg$b;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/cg;Lcom/google/vr/sdk/widgets/video/deps/br$c;Ljava/util/List;I[BLjava/util/HashMap;Lcom/google/vr/sdk/widgets/video/deps/cj;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/ov;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/vr/sdk/widgets/video/deps/cg<",
            "TT;>;",
            "Lcom/google/vr/sdk/widgets/video/deps/br$c<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cb$a;",
            ">;I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/cj;",
            "Landroid/os/Looper;",
            "Lcom/google/vr/sdk/widgets/video/deps/ov<",
            "Lcom/google/vr/sdk/widgets/video/deps/by;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->c:Ljava/util/UUID;

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->f:Lcom/google/vr/sdk/widgets/video/deps/br$c;

    .line 4
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    .line 5
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->g:I

    .line 6
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:[B

    if-nez p6, :cond_0

    .line 8
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->a:Ljava/util/List;

    .line 9
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->h:Ljava/util/HashMap;

    .line 10
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->b:Lcom/google/vr/sdk/widgets/video/deps/cj;

    .line 11
    iput p11, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->j:I

    .line 12
    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->i:Lcom/google/vr/sdk/widgets/video/deps/ov;

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    .line 14
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/br$b;

    invoke-direct {p1, p0, p9}, Lcom/google/vr/sdk/widgets/video/deps/br$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/br;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->d:Lcom/google/vr/sdk/widgets/video/deps/br$b;

    .line 15
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DrmRequestHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Landroid/os/HandlerThread;

    .line 16
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/br$a;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/br$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/br;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->n:Lcom/google/vr/sdk/widgets/video/deps/br$a;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/br;)I
    .locals 0

    .line 168
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->j:I

    return p0
.end method

.method private a(IZ)V
    .locals 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:[B

    .line 125
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->h:Ljava/util/HashMap;

    .line 126
    invoke-interface {v1, v0, v2, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cg;->a([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/vr/sdk/widgets/video/deps/cg$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->s:Lcom/google/vr/sdk/widgets/video/deps/cg$a;

    .line 127
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->n:Lcom/google/vr/sdk/widgets/video/deps/br$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/br$a;->a(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 130
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->b(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/br;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/br;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic a(Ljava/lang/Exception;Lcom/google/vr/sdk/widgets/video/deps/by;)V
    .locals 0

    .line 165
    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/by;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->t:Lcom/google/vr/sdk/widgets/video/deps/cg$b;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/br;->l()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->t:Lcom/google/vr/sdk/widgets/video/deps/cg$b;

    .line 84
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->f:Lcom/google/vr/sdk/widgets/video/deps/br$c;

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/br$c;->a(Ljava/lang/Exception;)V

    return-void

    .line 87
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    check-cast p2, [B

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cg;->b([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->f:Lcom/google/vr/sdk/widgets/video/deps/br$c;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/br$c;->a()V

    return-void

    :catch_0
    move-exception p1

    .line 90
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->f:Lcom/google/vr/sdk/widgets/video/deps/br$c;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/br$c;->a(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Z)Z
    .locals 3

    .line 66
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/br;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 68
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cg;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:[B

    .line 69
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->i:Lcom/google/vr/sdk/widgets/video/deps/ov;

    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/bt;->a:Lcom/google/vr/sdk/widgets/video/deps/ov$a;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Lcom/google/vr/sdk/widgets/video/deps/ov$a;)V

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:[B

    invoke-interface {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/cg;->d([B)Lcom/google/vr/sdk/widgets/video/deps/cf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->o:Lcom/google/vr/sdk/widgets/video/deps/cf;

    const/4 v0, 0x3

    .line 71
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 79
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->c(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->f:Lcom/google/vr/sdk/widgets/video/deps/br$c;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/br$c;->a(Lcom/google/vr/sdk/widgets/video/deps/br;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/br;->c(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/br;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/br;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 1

    .line 155
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 156
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->f:Lcom/google/vr/sdk/widgets/video/deps/br$c;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/br$c;->a(Lcom/google/vr/sdk/widgets/video/deps/br;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->c(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->s:Lcom/google/vr/sdk/widgets/video/deps/cg$a;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/br;->l()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->s:Lcom/google/vr/sdk/widgets/video/deps/cg$a;

    .line 135
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 136
    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/br;->b(Ljava/lang/Exception;)V

    return-void

    .line 138
    :cond_1
    :try_start_0
    check-cast p2, [B

    .line 139
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->g:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 140
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:[B

    invoke-interface {p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cg;->a([B[B)[B

    .line 141
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->i:Lcom/google/vr/sdk/widgets/video/deps/ov;

    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/bv;->a:Lcom/google/vr/sdk/widgets/video/deps/ov$a;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Lcom/google/vr/sdk/widgets/video/deps/ov$a;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:[B

    invoke-interface {p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cg;->a([B[B)[B

    move-result-object p1

    .line 143
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->g:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:[B

    if-eqz p2, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    array-length p2, p1

    if-eqz p2, :cond_4

    .line 144
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:[B

    :cond_4
    const/4 p1, 0x4

    .line 145
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    .line 146
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->i:Lcom/google/vr/sdk/widgets/video/deps/ov;

    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/bw;->a:Lcom/google/vr/sdk/widgets/video/deps/ov$a;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Lcom/google/vr/sdk/widgets/video/deps/ov$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->b(Ljava/lang/Exception;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 7

    .line 94
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/br;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    invoke-direct {p0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->a(IZ)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:[B

    if-nez v0, :cond_2

    .line 108
    invoke-direct {p0, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->a(IZ)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/br;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 110
    invoke-direct {p0, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->a(IZ)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:[B

    if-nez v0, :cond_4

    .line 96
    invoke-direct {p0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->a(IZ)V

    goto :goto_0

    .line 97
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/br;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 98
    :cond_5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/br;->j()J

    move-result-wide v3

    .line 99
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->g:I

    if-nez v0, :cond_6

    const-wide/16 v5, 0x3c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    const/16 v0, 0x58

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDrmSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->a(IZ)V

    goto :goto_0

    :cond_6
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_7

    .line 103
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ci;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ci;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->c(Ljava/lang/Exception;)V

    goto :goto_0

    .line 104
    :cond_7
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    .line 105
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->i:Lcom/google/vr/sdk/widgets/video/deps/ov;

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/bu;->a:Lcom/google/vr/sdk/widgets/video/deps/ov$a;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Lcom/google/vr/sdk/widgets/video/deps/ov$a;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 2

    .line 159
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cc$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cc$a;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->p:Lcom/google/vr/sdk/widgets/video/deps/cc$a;

    .line 160
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->i:Lcom/google/vr/sdk/widgets/video/deps/ov;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/bx;

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/bx;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Lcom/google/vr/sdk/widgets/video/deps/ov$a;)V

    .line 161
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 162
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    :cond_0
    return-void
.end method

.method private i()Z
    .locals 3

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:[B

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->r:[B

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cg;->b([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    .line 117
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/br;->c(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method private j()J
    .locals 5

    .line 120
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->d:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->c:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/ck;->a(Lcom/google/vr/sdk/widgets/video/deps/cc;)Landroid/util/Pair;

    move-result-object v0

    .line 123
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private k()V
    .locals 2

    .line 151
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 152
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    .line 153
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ci;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ci;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/br;->c(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private l()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 19
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->l:I

    if-ne v0, v1, :cond_1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    if-ne v0, v1, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/br;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/br;->b(Z)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/br;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/br;->k()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->b(Z)V

    goto :goto_0

    .line 50
    :cond_3
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    .line 51
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->f:Lcom/google/vr/sdk/widgets/video/deps/br$c;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/br$c;->a(Lcom/google/vr/sdk/widgets/video/deps/br;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/br;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public a([B)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 4

    .line 25
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->l:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->l:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 26
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->d:Lcom/google/vr/sdk/widgets/video/deps/br$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/br$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->n:Lcom/google/vr/sdk/widgets/video/deps/br$a;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/br$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 29
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->n:Lcom/google/vr/sdk/widgets/video/deps/br$a;

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 31
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->m:Landroid/os/HandlerThread;

    .line 32
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->o:Lcom/google/vr/sdk/widgets/video/deps/cf;

    .line 33
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->p:Lcom/google/vr/sdk/widgets/video/deps/cc$a;

    .line 34
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->s:Lcom/google/vr/sdk/widgets/video/deps/cg$a;

    .line 35
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->t:Lcom/google/vr/sdk/widgets/video/deps/cg$b;

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:[B

    if-eqz v0, :cond_0

    .line 37
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    invoke-interface {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/cg;->a([B)V

    .line 38
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:[B

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->i:Lcom/google/vr/sdk/widgets/video/deps/ov;

    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/bs;->a:Lcom/google/vr/sdk/widgets/video/deps/ov$a;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/ov;->a(Lcom/google/vr/sdk/widgets/video/deps/ov$a;)V

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public c()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cg;->b()Lcom/google/vr/sdk/widgets/video/deps/cg$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->t:Lcom/google/vr/sdk/widgets/video/deps/cg$b;

    .line 55
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->n:Lcom/google/vr/sdk/widgets/video/deps/br$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/br$a;->a(ILjava/lang/Object;Z)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/br;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/br;->b(Z)V

    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    return v0
.end method

.method public final f()Lcom/google/vr/sdk/widgets/video/deps/cc$a;
    .locals 2

    .line 63
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->p:Lcom/google/vr/sdk/widgets/video/deps/cc$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final g()Lcom/google/vr/sdk/widgets/video/deps/cf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->o:Lcom/google/vr/sdk/widgets/video/deps/cf;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->q:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/br;->e:Lcom/google/vr/sdk/widgets/video/deps/cg;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cg;->c([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method
