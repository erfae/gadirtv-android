.class public Lcom/google/ads/interactivemedia/v3/internal/aio;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final b:[C


# instance fields
.field a:I

.field private final c:Ljava/io/Reader;

.field private d:Z

.field private final e:[C

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:[I

.field private n:I

.field private o:[Ljava/lang/String;

.field private p:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->b:[C

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ain;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ain;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/afg;->a:Lcom/google/ads/interactivemedia/v3/internal/afg;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->d:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->m:[I

    const/4 v3, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->o:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    const-string v0, "in == null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->c:Ljava/io/Reader;

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/air;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/air;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final a(I)V
    .locals 6

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->m:[I

    .line 168
    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int v2, v0, v0

    .line 169
    new-array v3, v2, [I

    .line 170
    new-array v4, v2, [I

    .line 171
    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 172
    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    .line 173
    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->o:[Ljava/lang/String;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    .line 174
    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->m:[I

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->o:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->m:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    .line 175
    aput p1, v0, v1

    return-void
.end method

.method private final a(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 78
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final b(Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 124
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 136
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 125
    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    goto/16 :goto_6

    :cond_3
    const/16 v6, 0x20

    if-eq v1, v6, :cond_10

    const/16 v6, 0xd

    if-eq v1, v6, :cond_10

    const/16 v6, 0x9

    if-ne v1, v6, :cond_4

    goto/16 :goto_6

    :cond_4
    const/16 v6, 0x2f

    if-ne v1, v6, :cond_e

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    const/4 v1, 0x2

    if-ne v4, v2, :cond_6

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 126
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v2

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    return v6

    .line 127
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 128
    aget-char v4, v0, v2

    const/16 v7, 0x2a

    if-eq v4, v7, :cond_8

    if-eq v4, v6, :cond_7

    return v6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 129
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->u()V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 130
    :goto_2
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v2, v1

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    if-le v2, v4, :cond_a

    .line 131
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    const-string p1, "Unterminated comment"

    .line 137
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 131
    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 132
    aget-char v2, v2, v4

    if-ne v2, v5, :cond_b

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_d

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v6, v2

    .line 133
    aget-char v4, v4, v6

    const-string v6, "*/"

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 132
    :cond_c
    :goto_5
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    goto :goto_2

    .line 133
    :cond_d
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x23

    if-ne v1, v2, :cond_f

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 134
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    .line 135
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->u()V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    goto/16 :goto_0

    :cond_f
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    return v1

    :cond_10
    :goto_6
    move v1, v4

    goto/16 :goto_0
.end method

.method private final b(C)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    :goto_1
    move v4, v3

    move v3, v2

    :goto_2
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v4, :cond_5

    add-int/lit8 v7, v2, 0x1

    .line 141
    aget-char v2, v0, v2

    if-ne v2, p1, :cond_1

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/String;

    .line 148
    invoke-direct {p1, v0, v3, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 149
    :cond_0
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_3

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-nez v1, :cond_2

    add-int/lit8 v1, v7, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v1, v1

    .line 142
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 143
    :cond_2
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->v()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    goto :goto_1

    :cond_3
    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    :cond_4
    move v2, v7

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    sub-int v1, v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v1, v1

    .line 145
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    :cond_6
    sub-int v4, v2, v3

    .line 146
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 147
    invoke-direct {p0, v6}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    .line 151
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private final b(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    .line 67
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 69
    :cond_0
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    .line 67
    :goto_0
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->c:Ljava/io/Reader;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    array-length v4, v0

    sub-int/2addr v4, v2

    .line 68
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    .line 69
    aget-char v1, v0, v3

    const v5, 0xfeff

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method private final c(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    :goto_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 184
    aget-char v1, v0, v1

    if-ne v1, p1, :cond_0

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    return-void

    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 185
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->v()C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    :cond_2
    move v1, v4

    goto :goto_1

    .line 187
    :cond_3
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 186
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    .line 187
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private final n()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    .line 160
    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    const/16 v4, 0xc

    if-eq v3, v4, :cond_4

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_4

    const/16 v4, 0x23

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_4

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_2
    :pswitch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    array-length v3, v3

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    .line 161
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_6
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 163
    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    const/4 v2, 0x1

    .line 164
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v1, :cond_7

    .line 160
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 166
    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final t()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 11
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private final u()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 188
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 189
    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    return-void

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    return-void
.end method

.method private final v()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 176
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 176
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 177
    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v3, 0x22

    if-eq v0, v3, :cond_f

    const/16 v3, 0x27

    if-eq v0, v3, :cond_f

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_f

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_f

    const/16 v3, 0x62

    if-eq v0, v3, :cond_d

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_b

    const/16 v1, 0x72

    if-eq v0, v1, :cond_a

    const/16 v1, 0x74

    if-eq v0, v1, :cond_9

    const/16 v1, 0x75

    if-ne v0, v1, :cond_8

    const/4 v0, 0x4

    add-int/2addr v4, v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    if-le v4, v1, :cond_3

    .line 178
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 181
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 178
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/lit8 v2, v1, 0x4

    const/4 v4, 0x0

    :goto_2
    if-ge v1, v2, :cond_7

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    .line 179
    aget-char v5, v5, v1

    shl-int/lit8 v4, v4, 0x4

    int-to-char v4, v4

    const/16 v6, 0x30

    if-lt v5, v6, :cond_4

    const/16 v6, 0x39

    if-gt v5, v6, :cond_4

    add-int/lit8 v5, v5, -0x30

    :goto_3
    add-int/2addr v4, v5

    int-to-char v4, v4

    goto :goto_4

    :cond_4
    const/16 v6, 0x61

    if-lt v5, v6, :cond_5

    if-gt v5, v3, :cond_5

    add-int/lit8 v5, v5, -0x57

    goto :goto_3

    :cond_5
    const/16 v6, 0x41

    if-lt v5, v6, :cond_6

    const/16 v6, 0x46

    if-gt v5, v6, :cond_6

    add-int/lit8 v5, v5, -0x37

    goto :goto_3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_7
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    return v4

    :cond_8
    const-string v0, "Invalid escape sequence"

    .line 182
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    const/16 v0, 0x9

    return v0

    :cond_a
    const/16 v0, 0xd

    return v0

    :cond_b
    return v1

    :cond_c
    const/16 v0, 0xc

    return v0

    :cond_d
    const/16 v0, 0x8

    return v0

    .line 177
    :cond_e
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    :cond_f
    return v0
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 6
    aput v2, v0, v1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->d:Z

    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    add-int/lit8 v0, v0, -0x1

    .line 61
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 9
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->m:[I

    const/16 v2, 0x8

    .line 12
    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->c:Ljava/io/Reader;

    .line 13
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->o:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 64
    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    add-int/lit8 v0, v0, -0x1

    .line 65
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 120
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 121
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->o:[Ljava/lang/String;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v2, v2, -0x1

    .line 122
    aput-object v0, v1, v2

    return-object v0

    .line 121
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 154
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 155
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->j:J

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->k:I

    .line 157
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    :goto_0
    const/4 v1, 0x0

    .line 153
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v2, v2, -0x1

    .line 158
    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 157
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 81
    aget v3, v0, v1

    add-int/2addr v3, v2

    aput v3, v0, v1

    return v2

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 82
    aget v4, v0, v1

    add-int/2addr v4, v2

    aput v4, v0, v1

    return v3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 139
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 85
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->j:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->k:I

    .line 86
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 88
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    .line 87
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    .line 86
    :goto_2
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    .line 89
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->d:Z

    if-nez v3, :cond_9

    .line 90
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/air;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/air;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v3, v3, -0x1

    .line 91
    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0
.end method

.method public k()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 108
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->j:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->k:I

    .line 109
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    goto :goto_3

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 110
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    .line 111
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    .line 110
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v5, v5, -0x1

    .line 113
    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    nop

    :goto_3
    const/16 v0, 0xb

    .line 109
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    .line 114
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v8, v6, v0

    if-nez v8, :cond_7

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 116
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-wide v4

    .line 114
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->j:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    .line 96
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 97
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 97
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->k:I

    .line 98
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    goto :goto_3

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 100
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/aip;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 99
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    .line 100
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    .line 99
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v4, v4, -0x1

    .line 102
    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    :goto_3
    const/16 v0, 0xb

    .line 98
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    .line 103
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v7, v5, v0

    if-nez v7, :cond_8

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 105
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    .line 103
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v2, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 191
    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_2
    if-ne v2, v4, :cond_3

    .line 192
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    :goto_1
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_6

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0xe

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0x9

    const/16 v8, 0xa

    if-eq v2, v3, :cond_b

    if-ne v2, v8, :cond_6

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    if-ne v2, v6, :cond_7

    goto :goto_3

    :cond_7
    if-eq v2, v7, :cond_9

    if-ne v2, v5, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 197
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    goto :goto_6

    :cond_9
    :goto_2
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aio;->c(C)V

    goto :goto_6

    :cond_a
    :goto_3
    const/16 v2, 0x27

    .line 196
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aio;->c(C)V

    goto :goto_6

    :cond_b
    :goto_4
    const/4 v2, 0x0

    .line 192
    :goto_5
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v3, v2

    iget v9, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    if-ge v3, v9, :cond_e

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    .line 193
    aget-char v3, v9, v3

    if-eq v3, v7, :cond_d

    if-eq v3, v8, :cond_d

    if-eq v3, v6, :cond_d

    if-eq v3, v5, :cond_d

    const/16 v9, 0x20

    if-eq v3, v9, :cond_d

    const/16 v9, 0x23

    if-eq v3, v9, :cond_c

    const/16 v9, 0x2c

    if-eq v3, v9, :cond_d

    const/16 v9, 0x2f

    if-eq v3, v9, :cond_c

    const/16 v9, 0x3d

    if-eq v3, v9, :cond_c

    const/16 v9, 0x7b

    if-eq v3, v9, :cond_d

    const/16 v9, 0x7d

    if-eq v3, v9, :cond_d

    const/16 v9, 0x3a

    if-eq v3, v9, :cond_d

    const/16 v9, 0x3b

    if-eq v3, v9, :cond_c

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 195
    :cond_c
    :pswitch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    :cond_d
    :pswitch_1
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    goto :goto_6

    :cond_e
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 194
    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_4

    .line 191
    :cond_f
    :goto_6
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 198
    aget v2, v0, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->o:[Ljava/lang/String;

    const-string v2, "null"

    .line 199
    aput-object v2, v0, v1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public o()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->m:[I

    .line 71
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2e

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->o:[Ljava/lang/String;

    .line 73
    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5b

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->p:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->r()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xa

    return v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    const/16 v0, 0x9

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_5
    const/4 v0, 0x2

    return v0

    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_7
    const/4 v0, 0x4

    return v0

    :pswitch_8
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->d:Z

    return v0
.end method

.method final r()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->m:[I

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    .line 14
    aget v4, v1, v2

    const/16 v7, 0x5d

    const/16 v9, 0x3b

    const/16 v10, 0x2c

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/4 v13, 0x7

    const/4 v14, 0x4

    const/4 v15, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-ne v4, v8, :cond_0

    .line 15
    aput v5, v1, v2

    goto/16 :goto_2

    :cond_0
    if-ne v4, v5, :cond_3

    .line 16
    invoke-direct {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(Z)I

    move-result v1

    if-eq v1, v10, :cond_e

    if-eq v1, v9, :cond_2

    if-ne v1, v7, :cond_1

    .line 17
    iput v14, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v14

    :cond_1
    const-string v1, "Unterminated array"

    .line 18
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 17
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    goto/16 :goto_2

    :cond_3
    if-eq v4, v12, :cond_43

    if-ne v4, v15, :cond_4

    goto/16 :goto_19

    :cond_4
    if-ne v4, v14, :cond_7

    .line 29
    aput v15, v1, v2

    .line 30
    invoke-direct {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(Z)I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_e

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_6

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    if-lt v1, v2, :cond_5

    .line 32
    invoke-direct {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    aget-char v1, v1, v2

    const/16 v14, 0x3e

    if-ne v1, v14, :cond_e

    add-int/2addr v2, v8

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    goto :goto_2

    :cond_6
    const-string v1, "Expected \':\'"

    .line 33
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_7
    if-ne v4, v11, :cond_b

    .line 32
    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->d:Z

    if-eqz v1, :cond_a

    .line 34
    invoke-direct {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(Z)I

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/aio;->b:[C

    .line 35
    array-length v14, v2

    add-int/2addr v1, v14

    iget v14, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    if-le v1, v14, :cond_8

    array-length v1, v2

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .line 39
    :goto_0
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/aio;->b:[C

    .line 36
    array-length v14, v2

    if-ge v1, v14, :cond_9

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v11, v1

    .line 37
    aget-char v11, v14, v11

    aget-char v2, v2, v1

    if-ne v11, v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x6

    goto :goto_0

    :cond_9
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 38
    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 35
    :cond_a
    :goto_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->m:[I

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->n:I

    add-int/2addr v2, v3

    .line 39
    aput v13, v1, v2

    goto :goto_2

    :cond_b
    if-ne v4, v13, :cond_d

    .line 40
    invoke-direct {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(Z)I

    move-result v1

    if-ne v1, v3, :cond_c

    const/16 v1, 0x11

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v1

    .line 41
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    goto :goto_2

    :cond_d
    const/16 v1, 0x8

    if-eq v4, v1, :cond_42

    .line 42
    :cond_e
    :goto_2
    invoke-direct {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_41

    const/16 v2, 0x27

    if-eq v1, v2, :cond_40

    if-eq v1, v10, :cond_3d

    if-eq v1, v9, :cond_3d

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_3c

    if-eq v1, v7, :cond_3a

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_39

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    .line 46
    aget-char v1, v2, v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_13

    const/16 v2, 0x54

    if-ne v1, v2, :cond_f

    goto :goto_4

    :cond_f
    const/16 v2, 0x66

    if-eq v1, v2, :cond_12

    const/16 v2, 0x46

    if-ne v1, v2, :cond_10

    goto :goto_3

    :cond_10
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_11

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_18

    :cond_11
    const-string v1, "null"

    const-string v2, "NULL"

    const/4 v3, 0x7

    goto :goto_5

    :cond_12
    :goto_3
    const-string v1, "false"

    const-string v2, "FALSE"

    const/4 v3, 0x6

    goto :goto_5

    :cond_13
    :goto_4
    const-string v1, "true"

    const-string v2, "TRUE"

    const/4 v3, 0x5

    .line 47
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x1

    :goto_6
    if-ge v7, v4, :cond_16

    iget v9, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v9, v7

    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    if-lt v9, v10, :cond_14

    add-int/lit8 v9, v7, 0x1

    .line 48
    invoke-direct {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v9

    if-nez v9, :cond_14

    goto :goto_7

    .line 55
    :cond_14
    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v10, v7

    .line 49
    aget-char v9, v9, v10

    .line 50
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_15

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_15

    goto :goto_7

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_16
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v4

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    if-lt v1, v2, :cond_17

    add-int/lit8 v1, v4, 0x1

    .line 51
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_17
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v2, v4

    aget-char v1, v1, v2

    .line 52
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(C)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    :goto_7
    const/4 v3, 0x0

    goto :goto_8

    :cond_19
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iput v3, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    :goto_8
    if-nez v3, :cond_38

    .line 48
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    const-wide/16 v9, 0x0

    move-wide v13, v9

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    :goto_9
    add-int v6, v2, v7

    if-ne v6, v3, :cond_1d

    array-length v2, v1

    if-ne v7, v2, :cond_1b

    :cond_1a
    :goto_a
    const/4 v6, 0x0

    goto/16 :goto_16

    :cond_1b
    add-int/lit8 v2, v7, 0x1

    .line 53
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(I)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_11

    :cond_1c
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->g:I

    :cond_1d
    add-int v6, v2, v7

    .line 54
    aget-char v6, v1, v6

    const/16 v11, 0x2b

    if-eq v6, v11, :cond_35

    const/16 v11, 0x45

    if-eq v6, v11, :cond_33

    const/16 v11, 0x65

    if-eq v6, v11, :cond_33

    const/16 v11, 0x2d

    if-eq v6, v11, :cond_31

    const/16 v11, 0x2e

    if-eq v6, v11, :cond_30

    const/16 v11, 0x30

    if-lt v6, v11, :cond_28

    const/16 v11, 0x39

    if-le v6, v11, :cond_1e

    goto :goto_10

    :cond_1e
    if-eq v4, v8, :cond_26

    if-nez v4, :cond_1f

    goto :goto_e

    :cond_1f
    if-ne v4, v5, :cond_23

    cmp-long v11, v13, v9

    if-nez v11, :cond_20

    goto :goto_a

    :cond_20
    const-wide/16 v18, 0xa

    mul-long v18, v18, v13

    add-int/lit8 v6, v6, -0x30

    int-to-long v8, v6

    sub-long v18, v18, v8

    const-wide v8, -0xcccccccccccccccL

    cmp-long v6, v13, v8

    if-gtz v6, :cond_22

    if-nez v6, :cond_21

    cmp-long v6, v18, v13

    if-gez v6, :cond_21

    goto :goto_b

    :cond_21
    const/4 v6, 0x0

    goto :goto_c

    :cond_22
    :goto_b
    const/4 v6, 0x1

    :goto_c
    and-int v16, v16, v6

    move-wide/from16 v13, v18

    goto :goto_d

    :cond_23
    if-ne v4, v12, :cond_24

    const/4 v4, 0x4

    :goto_d
    const/4 v8, 0x6

    goto :goto_f

    :cond_24
    const/4 v8, 0x6

    if-eq v4, v15, :cond_25

    if-ne v4, v8, :cond_27

    :cond_25
    const/4 v4, 0x7

    goto :goto_f

    :cond_26
    :goto_e
    const/4 v8, 0x6

    add-int/lit8 v6, v6, -0x30

    neg-int v4, v6

    int-to-long v13, v4

    const/4 v4, 0x2

    :cond_27
    :goto_f
    const-wide/16 v9, 0x0

    goto/16 :goto_15

    .line 55
    :cond_28
    :goto_10
    invoke-direct {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(C)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_a

    :cond_29
    :goto_11
    if-ne v4, v5, :cond_2e

    if-eqz v16, :cond_2d

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v13, v1

    if-nez v3, :cond_2a

    if-eqz v17, :cond_2d

    const/4 v8, 0x1

    goto :goto_12

    :cond_2a
    move/from16 v8, v17

    :goto_12
    const-wide/16 v9, 0x0

    cmp-long v1, v13, v9

    if-nez v1, :cond_2b

    if-nez v8, :cond_2d

    :cond_2b
    if-eqz v8, :cond_2c

    goto :goto_13

    :cond_2c
    neg-long v13, v13

    .line 53
    :goto_13
    iput-wide v13, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->j:J

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    const/16 v1, 0xf

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    const/16 v6, 0xf

    goto :goto_16

    :cond_2d
    const/4 v4, 0x2

    :cond_2e
    if-eq v4, v5, :cond_2f

    const/4 v1, 0x4

    if-eq v4, v1, :cond_2f

    const/4 v1, 0x7

    if-ne v4, v1, :cond_1a

    :cond_2f
    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->k:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    const/16 v6, 0x10

    goto :goto_16

    :cond_30
    const/4 v8, 0x6

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x3

    goto :goto_15

    :cond_31
    const/4 v8, 0x6

    if-nez v4, :cond_32

    const/4 v4, 0x1

    const/16 v17, 0x1

    goto :goto_15

    :cond_32
    if-ne v4, v15, :cond_1a

    goto :goto_14

    :cond_33
    const/4 v8, 0x6

    if-eq v4, v5, :cond_34

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1a

    :cond_34
    const/4 v4, 0x5

    goto :goto_15

    :cond_35
    const/4 v8, 0x6

    if-ne v4, v15, :cond_1a

    :goto_14
    const/4 v4, 0x6

    :goto_15
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    goto/16 :goto_9

    :goto_16
    if-eqz v6, :cond_36

    return v6

    .line 48
    :cond_36
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->e:[C

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    .line 56
    aget-char v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(C)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    const/16 v1, 0xa

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v1

    :cond_37
    const-string v1, "Expected value"

    .line 57
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_38
    return v3

    :cond_39
    const/4 v1, 0x1

    .line 52
    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v1

    :cond_3a
    const/4 v1, 0x1

    if-eq v4, v1, :cond_3b

    goto :goto_17

    :cond_3b
    const/4 v2, 0x4

    .line 43
    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v2

    :cond_3c
    iput v12, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v12

    :cond_3d
    const/4 v1, 0x1

    :goto_17
    if-eq v4, v1, :cond_3f

    if-ne v4, v5, :cond_3e

    goto :goto_18

    :cond_3e
    const-string v1, "Unexpected value"

    .line 44
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 43
    :cond_3f
    :goto_18
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v1

    .line 45
    :cond_40
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    const/16 v1, 0x8

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v1

    :cond_41
    const/16 v1, 0x9

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v1

    .line 33
    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    .line 59
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    :goto_19
    const/4 v6, 0x4

    .line 19
    aput v6, v1, v2

    const/16 v1, 0x7d

    if-ne v4, v15, :cond_46

    const/4 v2, 0x1

    .line 20
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(Z)I

    move-result v6

    if-eq v6, v10, :cond_46

    if-eq v6, v9, :cond_45

    if-ne v6, v1, :cond_44

    .line 24
    iput v5, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v5

    :cond_44
    const-string v1, "Unterminated object"

    .line 28
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 21
    :cond_45
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    :cond_46
    const/4 v2, 0x1

    .line 22
    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b(Z)I

    move-result v2

    const/16 v6, 0x22

    if-eq v2, v6, :cond_4b

    const/16 v6, 0x27

    if-eq v2, v6, :cond_4a

    const-string v6, "Expected name"

    if-eq v2, v1, :cond_48

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    int-to-char v1, v2

    .line 26
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(C)Z

    move-result v1

    if-eqz v1, :cond_47

    const/16 v1, 0xe

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v1

    .line 27
    :cond_47
    invoke-direct {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_48
    if-eq v4, v15, :cond_49

    .line 26
    iput v5, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v5

    .line 23
    :cond_49
    invoke-direct {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 24
    :cond_4a
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->t()V

    const/16 v1, 0xc

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v1

    :cond_4b
    const/16 v1, 0xd

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/aio;->a:I

    return v1
.end method

.method s()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->h:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->f:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aio;->i:I

    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aio;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
