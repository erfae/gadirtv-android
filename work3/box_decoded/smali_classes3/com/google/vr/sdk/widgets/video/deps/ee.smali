.class public final Lcom/google/vr/sdk/widgets/video/deps/ee;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;
.implements Lcom/google/vr/sdk/widgets/video/deps/da;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ee$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private static final b:I


# instance fields
.field private final c:I

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/sdk/widgets/video/deps/dx$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private q:[Lcom/google/vr/sdk/widgets/video/deps/ee$a;

.field private r:[[J

.field private s:I

.field private t:J

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 333
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ef;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    const-string v0, "qt  "

    .line 334
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ee;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->c:I

    .line 5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/pc;->a:[B

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->m:I

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/el;J)I
    .locals 2

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/el;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/el;->b(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/el;JJ)J
    .locals 0

    .line 312
    invoke-static {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a(Lcom/google/vr/sdk/widgets/video/deps/el;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 315
    :cond_0
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/el;->c:[J

    aget-wide p1, p0, p1

    .line 316
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Lcom/google/vr/sdk/widgets/video/deps/cv;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dx$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/cv;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/el;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 177
    :goto_0
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 178
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aU:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    .line 179
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aR:I

    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->D:I

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->C:I

    .line 182
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget-boolean v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->u:Z

    move-object v3, v2

    move v8, p3

    .line 183
    invoke-static/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Lcom/google/vr/sdk/widgets/video/deps/dx$b;JLcom/google/vr/sdk/widgets/video/deps/cb;ZZ)Lcom/google/vr/sdk/widgets/video/deps/ei;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->E:I

    .line 187
    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    move-result-object v2

    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->F:I

    .line 188
    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    move-result-object v2

    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->G:I

    .line 189
    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    move-result-object v2

    .line 190
    invoke-static {v3, v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/dx$a;Lcom/google/vr/sdk/widgets/video/deps/cv;)Lcom/google/vr/sdk/widgets/video/deps/el;

    move-result-object v2

    .line 191
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/el;->b:I

    if-nez v3, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/cv;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/cv;-><init>()V

    .line 136
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->aA:I

    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 138
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->u:Z

    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$b;Z)Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 140
    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/cv;->a(Lcom/google/vr/sdk/widgets/video/deps/gp;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 141
    :cond_1
    :goto_0
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->c:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 142
    :goto_1
    :try_start_0
    invoke-direct {v0, v1, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Lcom/google/vr/sdk/widgets/video/deps/cv;Z)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/dy$g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 145
    :catch_0
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/cv;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/cv;-><init>()V

    .line 147
    invoke-direct {v0, v1, v3, v6}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Lcom/google/vr/sdk/widgets/video/deps/cv;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 148
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v11, -0x1

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    if-ge v7, v5, :cond_8

    .line 150
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/vr/sdk/widgets/video/deps/el;

    .line 151
    iget-object v15, v14, Lcom/google/vr/sdk/widgets/video/deps/el;->a:Lcom/google/vr/sdk/widgets/video/deps/ei;

    .line 152
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/ee$a;

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->p:Lcom/google/vr/sdk/widgets/video/deps/ct;

    iget v9, v15, Lcom/google/vr/sdk/widgets/video/deps/ei;->b:I

    .line 153
    invoke-interface {v8, v7, v9}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v8

    invoke-direct {v10, v15, v14, v8}, Lcom/google/vr/sdk/widgets/video/deps/ee$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/el;Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    .line 154
    iget v8, v14, Lcom/google/vr/sdk/widgets/video/deps/el;->e:I

    add-int/lit8 v8, v8, 0x1e

    .line 155
    iget-object v9, v15, Lcom/google/vr/sdk/widgets/video/deps/ei;->f:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {v9, v8}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v8

    .line 156
    iget v9, v15, Lcom/google/vr/sdk/widgets/video/deps/ei;->b:I

    if-ne v9, v6, :cond_4

    .line 157
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/cv;->a()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 158
    iget v9, v3, Lcom/google/vr/sdk/widgets/video/deps/cv;->b:I

    iget v6, v3, Lcom/google/vr/sdk/widgets/video/deps/cv;->c:I

    invoke-virtual {v8, v9, v6}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(II)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v8

    :cond_3
    if-eqz v4, :cond_4

    .line 160
    invoke-virtual {v8, v4}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Lcom/google/vr/sdk/widgets/video/deps/gp;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v8

    .line 161
    :cond_4
    iget-object v6, v10, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->c:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v6, v8}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 163
    iget-wide v8, v15, Lcom/google/vr/sdk/widgets/video/deps/ei;->e:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v8, v16

    if-eqz v6, :cond_5

    iget-wide v8, v15, Lcom/google/vr/sdk/widgets/video/deps/ei;->e:J

    goto :goto_4

    :cond_5
    iget-wide v8, v14, Lcom/google/vr/sdk/widgets/video/deps/el;->h:J

    .line 164
    :goto_4
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 165
    iget v6, v15, Lcom/google/vr/sdk/widgets/video/deps/ei;->b:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    const/4 v6, -0x1

    if-ne v11, v6, :cond_7

    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_5

    :cond_6
    const/4 v6, -0x1

    .line 167
    :cond_7
    :goto_5
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 169
    :cond_8
    iput v11, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->s:I

    .line 170
    iput-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->t:J

    .line 171
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/deps/ee$a;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/vr/sdk/widgets/video/deps/ee$a;

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->q:[Lcom/google/vr/sdk/widgets/video/deps/ee$a;

    .line 172
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a([Lcom/google/vr/sdk/widgets/video/deps/ee$a;)[[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->r:[[J

    .line 173
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->p:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    .line 174
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->p:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    return-void
.end method

.method private static a(I)Z
    .locals 1

    .line 330
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->R:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->S:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->T:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->am:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->an:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ao:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->Q:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ap:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aq:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ar:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->as:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->at:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->O:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->a:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aA:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z
    .locals 3

    const/16 v0, 0x8

    .line 321
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 322
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 323
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/ee;->b:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 325
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/ee;->b:I

    if-ne v0, v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a([Lcom/google/vr/sdk/widgets/video/deps/ee$a;)[[J
    .locals 15

    .line 284
    array-length v0, p0

    new-array v0, v0, [[J

    .line 285
    array-length v1, p0

    new-array v1, v1, [I

    .line 286
    array-length v2, p0

    new-array v2, v2, [J

    .line 287
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 288
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 289
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/el;->b:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 290
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/el;->f:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 294
    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 297
    :goto_2
    array-length v12, p0

    if-ge v11, v12, :cond_2

    .line 298
    aget-boolean v12, v3, v11

    if-nez v12, :cond_1

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_1

    .line 300
    aget-wide v8, v2, v11

    move v10, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 302
    :cond_2
    aget v8, v1, v10

    .line 303
    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    .line 304
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/el;->d:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 305
    aput v8, v1, v10

    .line 306
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_3

    .line 307
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/el;->f:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    .line 308
    :cond_3
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private b(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aS:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    .line 121
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aR:I

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->B:I

    if-ne v2, v3, :cond_1

    .line 122
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)V

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 124
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->h:I

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)V

    goto :goto_0

    .line 128
    :cond_2
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->h:I

    if-eq p1, v1, :cond_3

    .line 129
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ee;->e()V

    :cond_3
    return-void
.end method

.method private static b(I)Z
    .locals 1

    .line 331
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->B:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->E:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->F:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->G:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->P:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 69
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 72
    :cond_0
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    .line 73
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 74
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->j:J

    .line 75
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->i:I

    .line 76
    :cond_1
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->j:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v0, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 79
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->x()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->j:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 82
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aS:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 86
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->j:J

    .line 87
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->j:J

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_a

    .line 89
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->i:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ee;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->j:J

    add-long/2addr v2, v4

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    .line 91
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->i:I

    invoke-direct {v0, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 92
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->j:J

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_5

    .line 93
    invoke-direct {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ee;->b(J)V

    goto :goto_3

    .line 94
    :cond_5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ee;->e()V

    goto :goto_3

    .line 95
    :cond_6
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->i:I

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 96
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    if-ne p1, v2, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 97
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->j:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 98
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->j:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 99
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->h:I

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 102
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->h:I

    :goto_3
    return v1

    .line 88
    :cond_a
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->j:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 105
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 107
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 108
    iget-object p2, v4, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 109
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->i:I

    sget p2, Lcom/google/vr/sdk/widgets/video/deps/dx;->a:I

    if-ne p1, p2, :cond_0

    .line 110
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->u:Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->i:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dx$b;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pe;)V

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$b;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    .line 114
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 115
    :cond_3
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    const/4 p1, 0x1

    .line 117
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ee;->b(J)V

    if-eqz p1, :cond_4

    .line 118
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->h:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    return v5
.end method

.method private c(J)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    .line 253
    :goto_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->q:[Lcom/google/vr/sdk/widgets/video/deps/ee$a;

    array-length v3, v1

    if-ge v7, v3, :cond_7

    .line 254
    aget-object v1, v1, v7

    .line 255
    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->d:I

    .line 256
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/el;->b:I

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 258
    :cond_0
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/el;->c:[J

    aget-wide v4, v1, v3

    .line 259
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->r:[[J

    aget-object v1, v1, v7

    aget-wide v16, v1, v3

    sub-long v4, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-ltz v1, :cond_2

    const-wide/32 v18, 0x40000

    cmp-long v1, v4, v18

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-ne v1, v13, :cond_5

    cmp-long v3, v4, v14

    if-gez v3, :cond_5

    :cond_4
    move v13, v1

    move-wide v14, v4

    move v6, v7

    move-wide/from16 v11, v16

    :cond_5
    cmp-long v3, v16, v8

    if-gez v3, :cond_6

    move v10, v1

    move v2, v7

    move-wide/from16 v8, v16

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v8, v3

    if-eqz v1, :cond_8

    if-eqz v10, :cond_8

    const-wide/32 v3, 0xa00000

    add-long/2addr v8, v3

    cmp-long v1, v11, v8

    if-gez v1, :cond_9

    :cond_8
    move v2, v6

    :cond_9
    return v2
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 196
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    .line 197
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->m:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 198
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ee;->c(J)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->m:I

    if-ne v2, v3, :cond_0

    return v3

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->q:[Lcom/google/vr/sdk/widgets/video/deps/ee$a;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->m:I

    aget-object v2, v2, v4

    .line 202
    iget-object v4, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->c:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 203
    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->d:I

    .line 204
    iget-object v6, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/el;->c:[J

    aget-wide v7, v6, v5

    .line 205
    iget-object v6, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/el;->d:[I

    aget v6, v6, v5

    sub-long v0, v7, v0

    .line 206
    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    int-to-long v9, v9

    add-long/2addr v0, v9

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    cmp-long v12, v0, v9

    if-ltz v12, :cond_6

    const-wide/32 v9, 0x40000

    cmp-long v12, v0, v9

    if-ltz v12, :cond_1

    goto/16 :goto_2

    .line 210
    :cond_1
    iget-object p2, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ei;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ei;->g:I

    if-ne p2, v11, :cond_2

    const-wide/16 v7, 0x8

    add-long/2addr v0, v7

    add-int/lit8 v6, v6, -0x8

    :cond_2
    long-to-int p2, v0

    .line 213
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 214
    iget-object p2, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ei;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ei;->j:I

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 215
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 216
    aput-byte v0, p2, v0

    .line 217
    aput-byte v0, p2, v11

    const/4 v1, 0x2

    .line 218
    aput-byte v0, p2, v1

    .line 219
    iget-object p2, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ei;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/ei;->j:I

    .line 220
    iget-object v1, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->a:Lcom/google/vr/sdk/widgets/video/deps/ei;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->j:I

    const/4 v7, 0x4

    rsub-int/lit8 v1, v1, 0x4

    .line 221
    :goto_0
    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    if-ge v8, v6, :cond_5

    .line 222
    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->o:I

    if-nez v8, :cond_3

    .line 223
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v8, v8, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v8, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 224
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 225
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v8}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v8

    iput v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->o:I

    .line 226
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 227
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v4, v8, v7}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 228
    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    add-int/2addr v6, v1

    goto :goto_0

    .line 230
    :cond_3
    invoke-interface {v4, p1, v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result v8

    .line 231
    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    .line 232
    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->o:I

    sub-int/2addr v9, v8

    iput v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->o:I

    goto :goto_0

    .line 235
    :cond_4
    :goto_1
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    if-ge p2, v6, :cond_5

    sub-int p2, v6, p2

    .line 236
    invoke-interface {v4, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result p2

    .line 237
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    .line 238
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->o:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->o:I

    goto :goto_1

    :cond_5
    move v8, v6

    .line 240
    iget-object p1, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/el;->f:[J

    aget-wide v6, p1, v5

    iget-object p1, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/el;->g:[I

    aget p1, p1, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, v6

    move v7, p1

    invoke-interface/range {v4 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 241
    iget p1, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->d:I

    add-int/2addr p1, v11

    iput p1, v2, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->d:I

    .line 242
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->m:I

    .line 243
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    .line 244
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->o:I

    return v0

    .line 208
    :cond_6
    :goto_2
    iput-wide v7, p2, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    return v11
.end method

.method private d(J)V
    .locals 7

    .line 276
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->q:[Lcom/google/vr/sdk/widgets/video/deps/ee$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 277
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    .line 278
    invoke-virtual {v4, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/el;->a(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 280
    invoke-virtual {v4, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/el;->b(J)I

    move-result v5

    .line 281
    :cond_0
    iput v5, v3, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static final synthetic d()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 332
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ee;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/ee;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->h:I

    .line 67
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 25
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->h:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ee;->c(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result p1

    return p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 28
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ee;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 26
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ee;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/da$a;
    .locals 12

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->q:[Lcom/google/vr/sdk/widgets/video/deps/ee$a;

    array-length v1, v0

    if-nez v1, :cond_0

    .line 35
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/db;->a:Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p1

    :cond_0
    const-wide/16 v1, -0x1

    .line 38
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->s:I

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v4, :cond_3

    .line 39
    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    .line 40
    invoke-static {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a(Lcom/google/vr/sdk/widgets/video/deps/el;J)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 42
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/db;->a:Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p1

    .line 43
    :cond_1
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/el;->f:[J

    aget-wide v8, v7, v3

    .line 45
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/el;->c:[J

    aget-wide v10, v7, v3

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    .line 46
    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/el;->b:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/el;->b(J)I

    move-result p1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    .line 49
    iget-object p2, v0, Lcom/google/vr/sdk/widgets/video/deps/el;->f:[J

    aget-wide v1, p2, p1

    .line 50
    iget-object p2, v0, Lcom/google/vr/sdk/widgets/video/deps/el;->c:[J

    aget-wide p1, p2, p1

    goto :goto_0

    :cond_2
    move-wide p1, v1

    move-wide v1, v5

    :goto_0
    move-wide v3, p1

    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v3, v1

    move-wide v1, v5

    :goto_1
    const/4 v0, 0x0

    .line 54
    :goto_2
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->q:[Lcom/google/vr/sdk/widgets/video/deps/ee$a;

    array-length v8, v7

    if-ge v0, v8, :cond_6

    .line 55
    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->s:I

    if-eq v0, v8, :cond_5

    .line 56
    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/ee$a;->b:Lcom/google/vr/sdk/widgets/video/deps/el;

    .line 57
    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a(Lcom/google/vr/sdk/widgets/video/deps/el;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_4

    .line 59
    invoke-static {v7, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a(Lcom/google/vr/sdk/widgets/video/deps/el;JJ)J

    move-result-wide v3

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 61
    :cond_6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {v0, p1, p2, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_7

    .line 63
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p1

    .line 64
    :cond_7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    .line 65
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p2
.end method

.method public a(JJ)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->k:I

    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->m:I

    .line 17
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->n:I

    .line 18
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->o:I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ee;->e()V

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->q:[Lcom/google/vr/sdk/widgets/video/deps/ee$a;

    if-eqz p1, :cond_1

    .line 22
    invoke-direct {p0, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/ee;->d(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->p:Lcom/google/vr/sdk/widgets/video/deps/ct;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/eh;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p1

    return p1
.end method

.method public b()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->t:J

    return-wide v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
