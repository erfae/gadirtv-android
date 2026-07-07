.class public final Lcom/google/ads/interactivemedia/v3/internal/aoj;
.super Ljava/util/AbstractMap;
.source "IMASDK"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/ads/interactivemedia/v3/internal/anl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lcom/google/ads/interactivemedia/v3/internal/anl;"
    }
.end annotation


# instance fields
.field transient a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field transient b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field transient c:I

.field transient d:I

.field private transient e:[I

.field private transient f:[I

.field private transient g:[I

.field private transient h:[I

.field private transient i:I

.field private transient j:I

.field private transient k:[I

.field private transient l:[I

.field private transient m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient p:Lcom/google/ads/interactivemedia/v3/internal/anl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/anl<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aoj;)I
    .locals 0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->i:I

    return p0
.end method

.method private final a(III)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 128
    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Z)V

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->f(II)V

    .line 130
    invoke-direct {p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g(II)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->k:[I

    .line 131
    aget p2, p2, p1

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    .line 132
    aget p3, p3, p1

    .line 133
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(II)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    add-int/2addr p2, v1

    if-ne p2, p1, :cond_1

    goto :goto_5

    .line 161
    :cond_1
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->k:[I

    .line 134
    aget p3, p3, p2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    .line 135
    aget v2, v2, p2

    .line 136
    invoke-direct {p0, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(II)V

    .line 137
    invoke-direct {p0, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(II)V

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    .line 138
    aget-object v2, p3, p2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 139
    aget-object v4, v3, p2

    .line 140
    aput-object v2, p3, p1

    .line 141
    aput-object v4, v3, p1

    .line 142
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result p3

    .line 143
    invoke-direct {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(I)I

    move-result p3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e:[I

    .line 144
    aget v3, v2, p3

    if-ne v3, p2, :cond_2

    .line 145
    aput p1, v2, p3

    goto :goto_2

    .line 156
    :cond_2
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 146
    aget p3, p3, v3

    :goto_1
    move v5, v3

    move v3, p3

    move p3, v5

    if-ne v3, p2, :cond_5

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 148
    aput p1, v2, p3

    .line 145
    :goto_2
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 149
    aget v2, p3, p2

    aput v2, p3, p1

    .line 150
    aput v1, p3, p2

    .line 151
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result p3

    .line 152
    invoke-direct {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(I)I

    move-result p3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->f:[I

    .line 153
    aget v3, v2, p3

    if-ne v3, p2, :cond_3

    .line 154
    aput p1, v2, p3

    goto :goto_4

    .line 159
    :cond_3
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    .line 155
    aget p3, p3, v3

    :goto_3
    move v5, v3

    move v3, p3

    move p3, v5

    if-ne v3, p2, :cond_4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    .line 157
    aput p1, v2, p3

    .line 154
    :goto_4
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    .line 158
    aget v2, p3, p2

    aput v2, p3, p1

    .line 159
    aput v1, p3, p2

    .line 133
    :goto_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    add-int/2addr p2, v1

    const/4 p3, 0x0

    .line 160
    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 161
    aput-object p3, p1, p2

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    return-void

    .line 157
    :cond_4
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    .line 156
    aget p3, p3, v3

    goto :goto_3

    .line 148
    :cond_5
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 147
    aget p3, p3, v3

    goto :goto_1
.end method

.method private final a(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 164
    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Z)V

    .line 165
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v1

    .line 166
    invoke-virtual {p0, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Ljava/lang/Object;I)I

    move-result v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->j:I

    if-ne v1, v0, :cond_5

    if-ne v2, p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->k:[I

    .line 167
    aget v2, v0, p1

    goto :goto_1

    .line 176
    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    if-ne v2, v0, :cond_2

    move v2, v1

    :cond_2
    :goto_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    .line 167
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    .line 168
    aget v1, v1, v0

    goto :goto_2

    .line 176
    :cond_3
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    if-eq v3, v0, :cond_4

    const/4 v1, -0x2

    .line 168
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->k:[I

    .line 169
    aget v0, v0, p1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    .line 170
    aget v3, v3, p1

    .line 171
    invoke-direct {p0, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    .line 172
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->f(II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    .line 173
    aput-object p2, v0, p1

    .line 174
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(II)V

    .line 175
    invoke-direct {p0, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(II)V

    .line 176
    invoke-direct {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(II)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 177
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Key already present in map: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aoj;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aoj;Lcom/google/ads/interactivemedia/v3/internal/anl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->p:Lcom/google/ads/interactivemedia/v3/internal/anl;

    return-void
.end method

.method private static a([II)[I
    .locals 2

    .line 58
    array-length v0, p0

    .line 59
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, -0x1

    .line 60
    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method private final b(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 178
    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Z)V

    .line 179
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v1

    .line 180
    invoke-virtual {p0, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(Ljava/lang/Object;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 181
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g(II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 182
    aput-object p2, v0, p1

    .line 183
    invoke-direct {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e(II)V

    return-void

    .line 180
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 184
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Value already present in map: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/aoj;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private static b(I)[I
    .locals 1

    .line 15
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 16
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/aoj;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    return-object p0
.end method

.method public static c()Lcom/google/ads/interactivemedia/v3/internal/aoj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/ads/interactivemedia/v3/internal/aoj<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aoj;

    .line 14
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;-><init>()V

    return-object v0
.end method

.method private final c(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 37
    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 38
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aok;->a(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    .line 39
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 40
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 41
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    .line 42
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->k:[I

    .line 43
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->k:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    .line 44
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e:[I

    .line 45
    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 46
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->c(I)I

    move-result p1

    .line 47
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e:[I

    .line 48
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->f:[I

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    .line 49
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    .line 50
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e:[I

    .line 51
    aget v3, v2, v0

    aput v3, v1, p1

    .line 52
    aput p1, v2, v0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 53
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    .line 54
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->f:[I

    .line 55
    aget v3, v2, v0

    aput v3, v1, p1

    .line 56
    aput p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final c(II)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->i:I

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    .line 185
    aput p2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->j:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->k:[I

    .line 186
    aput p1, v0, p2

    return-void
.end method

.method private final d(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e:[I

    .line 3
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method private final d(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Z)V

    .line 78
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e:[I

    .line 79
    aget v2, v1, p2

    aput v2, v0, p1

    .line 80
    aput p1, v1, p2

    return-void
.end method

.method private final e(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Z)V

    .line 82
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->f:[I

    .line 83
    aget v2, v1, p2

    aput v2, v0, p1

    .line 84
    aput p1, v1, p2

    return-void
.end method

.method private final f(II)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Z)V

    .line 18
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(I)I

    move-result p2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e:[I

    .line 19
    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 20
    aget v3, v2, p1

    aput v3, v1, p2

    .line 21
    aput v0, v2, p1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 22
    aget p2, p2, v2

    :goto_1
    move v4, v2

    move v2, p2

    move p2, v4

    if-eq v2, v0, :cond_3

    if-ne v2, p1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 24
    aget v2, v1, p1

    aput v2, v1, p2

    .line 25
    aput v0, v1, p1

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 23
    aget p2, p2, v2

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    .line 26
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected to find entry with key "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private final g(II)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Z)V

    .line 28
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(I)I

    move-result p2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->f:[I

    .line 29
    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    .line 30
    aget v3, v2, p1

    aput v3, v1, p2

    .line 31
    aput v0, v2, p1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    .line 32
    aget p2, p2, v2

    :goto_1
    move v4, v2

    move v2, p2

    move p2, v4

    if-eq v2, v0, :cond_3

    if-ne v2, p1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    .line 34
    aget v2, v1, p1

    aput v2, v1, p2

    .line 35
    aput v0, v1, p1

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    .line 33
    aget p2, p2, v2

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 36
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x22

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected to find entry with value "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 119
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/16 v1, 0x10

    .line 120
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 121
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 122
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 123
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 189
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 190
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 192
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .locals 1

    .line 63
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final a(Ljava/lang/Object;I)I
    .locals 6

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e:[I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method final a(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I
    .locals 0

    .line 61
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(I)I

    move-result p2

    aget p2, p3, p2

    :goto_0
    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    .line 62
    aget-object p3, p5, p2

    invoke-static {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return p2

    .line 61
    :cond_0
    aget p2, p4, p2

    goto :goto_0

    :cond_1
    return p3
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    .line 104
    aget-object p1, p1, v1

    .line 105
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 106
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(ILjava/lang/Object;)V

    return-object p1

    :cond_1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->j:I

    .line 107
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v3

    .line 108
    invoke-virtual {p0, p2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Ljava/lang/Object;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v4, "Key already present: %s"

    .line 109
    invoke-static {v2, v4, p2}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    add-int/2addr v2, v5

    .line 110
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 111
    aput-object p2, v2, v4

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 112
    aput-object p1, p2, v4

    .line 113
    invoke-direct {p0, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e(II)V

    const/4 p1, -0x2

    if-ne v1, p1, :cond_3

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->i:I

    goto :goto_1

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    .line 115
    aget p1, p1, v1

    .line 114
    :goto_1
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 116
    invoke-direct {p0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(II)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 117
    invoke-direct {p0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->n:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aog;

    .line 187
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/aog;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aoj;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->n:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method final a(I)V
    .locals 2

    const-string v0, "expectedSize"

    .line 69
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(ILjava/lang/String;)V

    .line 70
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->c(I)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 71
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e:[I

    .line 72
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->f:[I

    .line 73
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    .line 74
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->i:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->j:I

    .line 75
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->k:[I

    .line 76
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    return-void
.end method

.method final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 162
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(III)V

    return-void
.end method

.method final b(Ljava/lang/Object;)I
    .locals 1

    .line 65
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final b(Ljava/lang/Object;I)I
    .locals 6

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->f:[I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/anl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/anl<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->p:Lcom/google/ads/interactivemedia/v3/internal/anl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aod;

    .line 85
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/aod;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aoj;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->p:Lcom/google/ads/interactivemedia/v3/internal/anl;

    :cond_0
    return-object v0
.end method

.method final b(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    .line 163
    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(III)V

    return-void
.end method

.method public final clear()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 5
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e:[I

    const/4 v1, -0x1

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->f:[I

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->g:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 8
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->h:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 9
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->k:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 10
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->l:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 11
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->i:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->j:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aoc;

    .line 57
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/aoc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aoj;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->o:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 68
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->m:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aof;

    .line 86
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/aof;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aoj;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->m:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 87
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 89
    aget-object p1, p1, v1

    .line 90
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(ILjava/lang/Object;)V

    return-object p1

    .line 92
    :cond_1
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v1

    .line 93
    invoke-virtual {p0, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(Ljava/lang/Object;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Value already present: %s"

    .line 94
    invoke-static {v2, v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    add-int/2addr v2, v4

    .line 95
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 96
    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 97
    aput-object p2, p1, v3

    .line 98
    invoke-direct {p0, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d(II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 99
    invoke-direct {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->e(II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->j:I

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    const/4 p2, -0x2

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c(II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 124
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v0

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b:[Ljava/lang/Object;

    .line 126
    aget-object v1, v1, p1

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(II)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    return v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
