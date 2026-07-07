.class final Lcom/google/vr/sdk/widgets/video/deps/gf;
.super Ljava/lang/Object;
.source "UserDataReader.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/dc;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->a:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/dc;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->b:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    return-void
.end method


# virtual methods
.method public a(JLcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 4

    .line 21
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 24
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 25
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    .line 26
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/lz;->a:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf;->b:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-static {p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/lz;->b(JLcom/google/vr/sdk/widgets/video/deps/pe;[Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/gf;->b:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result v3

    const/4 v4, 0x3

    move-object/from16 v5, p1

    invoke-interface {v5, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v3

    .line 8
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/gf;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 9
    iget-object v7, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    const-string v6, "application/cea-608"

    .line 11
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    const-string v8, "Invalid closed caption mime type provided: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    .line 13
    :goto_3
    invoke-static {v6, v8}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(ZLjava/lang/Object;)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    iget v10, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    iget-object v11, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    iget v12, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->A:I

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    move-object/from16 v16, v4

    .line 16
    invoke-static/range {v6 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    .line 17
    invoke-interface {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 18
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/gf;->b:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
