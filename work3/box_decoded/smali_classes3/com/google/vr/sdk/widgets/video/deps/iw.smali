.class public final Lcom/google/vr/sdk/widgets/video/deps/iw;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/iw;

.field public static final c:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/iw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field private final d:[Lcom/google/vr/sdk/widgets/video/deps/iv;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/iw;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/iw;-><init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/iw;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 34
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/iw$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/iw$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/iw;->c:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    .line 7
    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->d:[Lcom/google/vr/sdk/widgets/video/deps/iv;

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-ge v0, v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->d:[Lcom/google/vr/sdk/widgets/video/deps/iv;

    const-class v2, Lcom/google/vr/sdk/widgets/video/deps/iv;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/iv;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->d:[Lcom/google/vr/sdk/widgets/video/deps/iv;

    .line 3
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/iv;)I
    .locals 2

    const/4 v0, 0x0

    .line 13
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-ge v0, v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->d:[Lcom/google/vr/sdk/widgets/video/deps/iv;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->d:[Lcom/google/vr/sdk/widgets/video/deps/iv;

    aget-object p1, v0, p1

    return-object p1
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

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 26
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->d:[Lcom/google/vr/sdk/widgets/video/deps/iv;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/iw;->d:[Lcom/google/vr/sdk/widgets/video/deps/iv;

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
    .locals 1

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->e:I

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->d:[Lcom/google/vr/sdk/widgets/video/deps/iv;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->e:I

    .line 20
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->e:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 28
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 29
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iw;->d:[Lcom/google/vr/sdk/widgets/video/deps/iv;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
