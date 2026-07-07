.class public final Lcom/google/vr/sdk/widgets/video/deps/cb;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/util/Comparator<",
        "Lcom/google/vr/sdk/widgets/video/deps/cb$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field private final d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cb$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cb$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cb;->c:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->a:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->e:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    .line 37
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cb$a;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cb;-><init>(Ljava/lang/String;Z[Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Z[Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {p3}, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    .line 30
    :cond_0
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 31
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    .line 32
    array-length p1, p3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->b:I

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cb;-><init>(Ljava/lang/String;Z[Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/cb$a;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/cb;-><init>(Ljava/lang/String;Z[Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cb;-><init>(Ljava/lang/String;[Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V

    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/cb;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 4
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->a:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    .line 6
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :cond_2
    if-eqz p1, :cond_5

    if-nez v3, :cond_3

    .line 11
    iget-object p0, p1, Lcom/google/vr/sdk/widgets/video/deps/cb;->a:Ljava/lang/String;

    move-object v3, p0

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 13
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cb;->d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    array-length v4, p1

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v5, p1, v1

    .line 14
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b(Lcom/google/vr/sdk/widgets/video/deps/cb$a;)Ljava/util/UUID;

    move-result-object v6

    invoke-static {v0, p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/cb;->a(Ljava/util/ArrayList;ILjava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 15
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-direct {v2, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/cb;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_2
    return-object v2
.end method

.method private static a(Ljava/util/ArrayList;ILjava/util/UUID;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/cb$a;",
            ">;I",
            "Ljava/util/UUID;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b(Lcom/google/vr/sdk/widgets/video/deps/cb$a;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cb$a;Lcom/google/vr/sdk/widgets/video/deps/cb$a;)I
    .locals 2

    .line 56
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->a:Ljava/util/UUID;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b(Lcom/google/vr/sdk/widgets/video/deps/cb$a;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/b;->a:Ljava/util/UUID;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b(Lcom/google/vr/sdk/widgets/video/deps/cb$a;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b(Lcom/google/vr/sdk/widgets/video/deps/cb$a;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b(Lcom/google/vr/sdk/widgets/video/deps/cb$a;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/cb$a;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/cb;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 42
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cb;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cb;-><init>(Ljava/lang/String;Z[Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V

    return-object v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cb;->a(Lcom/google/vr/sdk/widgets/video/deps/cb$a;Lcom/google/vr/sdk/widgets/video/deps/cb$a;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cb;

    .line 53
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cb;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cb;->d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    .line 54
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->e:I

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->e:I

    .line 47
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->e:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 60
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb;->d:[Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
