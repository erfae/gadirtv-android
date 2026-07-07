.class public final Lcom/google/vr/sdk/widgets/video/deps/gb;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/gb$b;,
        Lcom/google/vr/sdk/widgets/video/deps/gb$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private static final b:J

.field private static final c:J

.field private static final d:J


# instance fields
.field private final e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/pp;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final h:Landroid/util/SparseIntArray;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/gd$c;

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/gd;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/util/SparseBooleanArray;

.field private final l:Landroid/util/SparseBooleanArray;

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/ga;

.field private n:Lcom/google/vr/sdk/widgets/video/deps/fz;

.field private o:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/google/vr/sdk/widgets/video/deps/gd;

.field private u:I

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gc;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    const-string v0, "AC-3"

    .line 182
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->b:J

    const-string v0, "EAC3"

    .line 183
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->c:J

    const-string v0, "HEVC"

    .line 184
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pp;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pp;-><init>(J)V

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ff;

    invoke-direct {v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ff;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/gd$c;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/gd$c;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/vr/sdk/widgets/video/deps/gd$c;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->i:Lcom/google/vr/sdk/widgets/video/deps/gd$c;

    .line 9
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Ljava/util/List;

    .line 13
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Ljava/util/List;

    .line 14
    :goto_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([BI)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 15
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->k:Landroid/util/SparseBooleanArray;

    .line 16
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->l:Landroid/util/SparseBooleanArray;

    .line 17
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->j:Landroid/util/SparseArray;

    .line 18
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Landroid/util/SparseIntArray;

    .line 19
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ga;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->m:Lcom/google/vr/sdk/widgets/video/deps/ga;

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->v:I

    .line 21
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->g()V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/gb;I)I
    .locals 0

    .line 168
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->v:I

    return p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/gb;)Landroid/util/SparseArray;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->j:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/gb;Lcom/google/vr/sdk/widgets/video/deps/gd;)Lcom/google/vr/sdk/widgets/video/deps/gd;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->t:Lcom/google/vr/sdk/widgets/video/deps/gd;

    return-object p1
.end method

.method private a(J)V
    .locals 12

    .line 114
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->r:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->r:Z

    .line 116
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->m:Lcom/google/vr/sdk/widgets/video/deps/ga;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ga;->b()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 117
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fz;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->m:Lcom/google/vr/sdk/widgets/video/deps/ga;

    .line 118
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->c()Lcom/google/vr/sdk/widgets/video/deps/pp;

    move-result-object v6

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->m:Lcom/google/vr/sdk/widgets/video/deps/ga;

    .line 119
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->b()J

    move-result-wide v7

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->v:I

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/fz;-><init>(Lcom/google/vr/sdk/widgets/video/deps/pp;JJI)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->n:Lcom/google/vr/sdk/widgets/video/deps/fz;

    .line 120
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->o:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fz;->a()Lcom/google/vr/sdk/widgets/video/deps/da;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->o:Lcom/google/vr/sdk/widgets/video/deps/ct;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->m:Lcom/google/vr/sdk/widgets/video/deps/ga;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ga;->b()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(I)Z
    .locals 3

    .line 148
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->l:Landroid/util/SparseBooleanArray;

    .line 149
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/gb;Z)Z
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->q:Z

    return p1
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 162
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/gb;)I
    .locals 2

    .line 164
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->p:I

    return v0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/gb;I)I
    .locals 0

    .line 176
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->p:I

    return p1
.end method

.method static synthetic b()J
    .locals 2

    .line 178
    sget-wide v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->b:J

    return-wide v0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 124
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_1

    .line 125
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v1

    if-lez v1, :cond_0

    .line 127
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v4, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 129
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 130
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    rsub-int v4, v1, 0x24b8

    .line 131
    invoke-interface {p1, v0, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    return v2

    .line 134
    :cond_2
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/gb;)I
    .locals 0

    .line 165
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:I

    return p0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/gb;)I
    .locals 0

    .line 166
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->p:I

    return p0
.end method

.method static synthetic d()J
    .locals 2

    .line 179
    sget-wide v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->c:J

    return-wide v0
.end method

.method static synthetic e()J
    .locals 2

    .line 180
    sget-wide v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/vr/sdk/widgets/video/deps/gb;)Ljava/util/List;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Ljava/util/List;

    return-object p0
.end method

.method private f()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-static {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ge;->a([BII)I

    move-result v2

    .line 140
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    add-int/lit16 v3, v2, 0xbc

    if-le v3, v1, :cond_1

    .line 143
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->u:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->u:I

    .line 144
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/16 v0, 0x178

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v1, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->u:I

    :cond_2
    :goto_0
    return v3
.end method

.method static synthetic f(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/gd;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->t:Lcom/google/vr/sdk/widgets/video/deps/gd;

    return-object p0
.end method

.method static synthetic g(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/gd$c;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->i:Lcom/google/vr/sdk/widgets/video/deps/gd$c;

    return-object p0
.end method

.method private g()V
    .locals 7

    .line 151
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->k:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 152
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 153
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->i:Lcom/google/vr/sdk/widgets/video/deps/gd$c;

    .line 154
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/gd$c;->a()Landroid/util/SparseArray;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 157
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/gd;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->j:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fw;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/gb$a;

    invoke-direct {v3, p0}, Lcom/google/vr/sdk/widgets/video/deps/gb$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gb;)V

    invoke-direct {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/fw;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->t:Lcom/google/vr/sdk/widgets/video/deps/gd;

    return-void
.end method

.method static synthetic h(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/ct;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->o:Lcom/google/vr/sdk/widgets/video/deps/ct;

    return-object p0
.end method

.method static synthetic i(Lcom/google/vr/sdk/widgets/video/deps/gb;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->k:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic j(Lcom/google/vr/sdk/widgets/video/deps/gb;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->l:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic k(Lcom/google/vr/sdk/widgets/video/deps/gb;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->q:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 61
    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v3

    .line 62
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->q:Z

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_3

    cmp-long v5, v3, v7

    if-eqz v5, :cond_0

    .line 63
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:I

    if-eq v5, v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 64
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->m:Lcom/google/vr/sdk/widgets/video/deps/ga;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a()Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->m:Lcom/google/vr/sdk/widgets/video/deps/ga;

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->v:I

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;I)I

    move-result v1

    return v1

    .line 66
    :cond_1
    invoke-direct {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(J)V

    .line 67
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->s:Z

    if-eqz v5, :cond_2

    .line 68
    iput-boolean v11, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->s:Z

    const-wide/16 v12, 0x0

    .line 69
    invoke-virtual {v0, v12, v13, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(JJ)V

    .line 70
    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v14

    cmp-long v5, v14, v12

    if-eqz v5, :cond_2

    .line 71
    iput-wide v12, v2, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    return v10

    .line 73
    :cond_2
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->n:Lcom/google/vr/sdk/widgets/video/deps/fz;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/fz;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->n:Lcom/google/vr/sdk/widgets/video/deps/fz;

    invoke-virtual {v3, v1, v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/fz;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cl$c;)I

    move-result v1

    return v1

    .line 75
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    return v1

    .line 77
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->f()I

    move-result v1

    .line 78
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v2

    if-le v1, v2, :cond_5

    return v11

    .line 81
    :cond_5
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v5

    const/high16 v12, 0x800000

    and-int/2addr v12, v5

    if-eqz v12, :cond_6

    .line 83
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return v11

    :cond_6
    const/high16 v12, 0x400000

    and-int/2addr v12, v5

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    :goto_1
    const v13, 0x1fff00

    and-int/2addr v13, v5

    shr-int/lit8 v13, v13, 0x8

    and-int/lit8 v14, v5, 0x20

    if-eqz v14, :cond_8

    const/4 v14, 0x1

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    :goto_2
    and-int/lit8 v15, v5, 0x10

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    goto :goto_3

    :cond_9
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_a

    .line 89
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->j:Landroid/util/SparseArray;

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/gd;

    :cond_a
    if-nez v6, :cond_b

    .line 91
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return v11

    .line 93
    :cond_b
    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:I

    if-eq v15, v9, :cond_d

    and-int/lit8 v5, v5, 0xf

    .line 95
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Landroid/util/SparseIntArray;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v15, v13, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 96
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v13, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v7, v5, :cond_c

    .line 98
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return v11

    :cond_c
    add-int/2addr v7, v10

    and-int/lit8 v7, v7, 0xf

    if-eq v5, v7, :cond_d

    .line 101
    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/gd;->a()V

    :cond_d
    if-eqz v14, :cond_e

    .line 103
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v5

    .line 104
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v7, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 105
    :cond_e
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->q:Z

    .line 106
    invoke-direct {v0, v13}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 107
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v7, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 108
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v6, v7, v12}, Lcom/google/vr/sdk/widgets/video/deps/gd;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Z)V

    .line 109
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 110
    :cond_f
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:I

    if-eq v2, v9, :cond_10

    if-nez v5, :cond_10

    iget-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->q:Z

    if-eqz v2, :cond_10

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-eqz v2, :cond_10

    .line 111
    iput-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->s:Z

    .line 112
    :cond_10
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return v11
.end method

.method public a(JJ)V
    .locals 10

    .line 39
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 40
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_4

    .line 42
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 44
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->c()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_2

    .line 46
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->c()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_3

    .line 47
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->a()J

    move-result-wide v2

    cmp-long v5, v2, p3

    if-eqz v5, :cond_3

    .line 48
    :cond_2
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->d()V

    .line 49
    invoke-virtual {v4, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->a(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    cmp-long p1, p3, v2

    if-eqz p1, :cond_5

    .line 51
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->n:Lcom/google/vr/sdk/widgets/video/deps/fz;

    if-eqz p1, :cond_5

    .line 52
    invoke-virtual {p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/fz;->a(J)V

    .line 53
    :cond_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a()V

    .line 54
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    .line 55
    :goto_3
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->j:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 56
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->j:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/gd;

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 58
    :cond_6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->u:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->o:Lcom/google/vr/sdk/widgets/video/deps/ct;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 24
    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 28
    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-eq v4, v6, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    .line 33
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public c()V
    .locals 0

    return-void
.end method
