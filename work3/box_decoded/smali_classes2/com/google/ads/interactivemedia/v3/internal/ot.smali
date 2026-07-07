.class public final Lcom/google/ads/interactivemedia/v3/internal/ot;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/ads/interactivemedia/v3/internal/ot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[Lcom/google/ads/interactivemedia/v3/internal/os;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/or;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/or;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/os;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 2
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/os;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/os;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ads/interactivemedia/v3/internal/os;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/ads/interactivemedia/v3/internal/os;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 13
    array-length v0, v0

    return v0
.end method

.method public final a(I)Lcom/google/ads/interactivemedia/v3/internal/os;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 11
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ot;)Lcom/google/ads/interactivemedia/v3/internal/ot;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a([Lcom/google/ads/interactivemedia/v3/internal/os;)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object p1

    return-object p1
.end method

.method public final varargs a([Lcom/google/ads/interactivemedia/v3/internal/os;)Lcom/google/ads/interactivemedia/v3/internal/ot;
    .locals 2

    .line 5
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ot;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 6
    invoke-static {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ads/interactivemedia/v3/internal/os;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ot;-><init>([Lcom/google/ads/interactivemedia/v3/internal/os;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/ot;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 10
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "entries="

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 15
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ot;->a:[Lcom/google/ads/interactivemedia/v3/internal/os;

    .line 16
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 17
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
