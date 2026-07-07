.class public final Lcom/google/ads/interactivemedia/v3/internal/hk;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/ads/interactivemedia/v3/internal/hj;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/ads/interactivemedia/v3/internal/hk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:[Lcom/google/ads/interactivemedia/v3/internal/hj;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hh;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/hh;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/hk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/hj;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->b:[Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 3
    array-length p1, p1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/hj;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    invoke-direct {p0, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/lang/String;Z[Lcom/google/ads/interactivemedia/v3/internal/hj;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Lcom/google/ads/interactivemedia/v3/internal/hj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p3}, [Lcom/google/ads/interactivemedia/v3/internal/hj;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    :cond_0
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->b:[Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 6
    array-length p1, p3

    .line 7
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/ads/interactivemedia/v3/internal/hj;)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/lang/String;Z[Lcom/google/ads/interactivemedia/v3/internal/hj;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/hj;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/lang/String;Z[Lcom/google/ads/interactivemedia/v3/internal/hj;)V

    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/hk;Lcom/google/ads/interactivemedia/v3/internal/hk;)Lcom/google/ads/interactivemedia/v3/internal/hk;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->b:[Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 13
    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    .line 14
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/hj;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 15
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v1

    :cond_2
    if-eqz p1, :cond_7

    if-nez v3, :cond_3

    iget-object p0, p1, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Ljava/lang/String;

    move-object v3, p0

    .line 16
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/hk;->b:[Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 17
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_7

    aget-object v6, p1, v5

    .line 18
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/hj;->a()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/google/ads/interactivemedia/v3/internal/hj;->a:Ljava/util/UUID;

    const/4 v8, 0x0

    :goto_2
    if-ge v8, p0, :cond_5

    .line 19
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/ads/interactivemedia/v3/internal/hj;

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/internal/hj;->a:Ljava/util/UUID;

    invoke-virtual {v9, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 21
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    return-object v1

    :cond_8
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/hk;

    invoke-direct {p0, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/hk;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Ljava/lang/String;

    .line 10
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hk;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->b:[Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 11
    invoke-direct {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/lang/String;Z[Lcom/google/ads/interactivemedia/v3/internal/hj;)V

    return-object v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/hj;

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/hj;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/bk;->a:Ljava/util/UUID;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/hj;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/bk;->a:Ljava/util/UUID;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/hj;->a:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/hj;->a:Ljava/util/UUID;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/hj;->a:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/hk;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Ljava/lang/String;

    .line 24
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->b:[Lcom/google/ads/interactivemedia/v3/internal/hj;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/hk;->b:[Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 25
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->b:[Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 27
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->c:I

    :cond_1
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/hk;->b:[Lcom/google/ads/interactivemedia/v3/internal/hj;

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
