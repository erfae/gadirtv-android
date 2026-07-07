.class public final Lcom/google/vr/sdk/widgets/video/deps/iv;
.super Ljava/lang/Object;
.source "TrackGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final b:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/iv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field private final c:[Lcom/google/vr/sdk/widgets/video/deps/l;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/iv$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/iv$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/iv;->b:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    .line 8
    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/l;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->c:[Lcom/google/vr/sdk/widgets/video/deps/l;

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->c:[Lcom/google/vr/sdk/widgets/video/deps/l;

    const-class v2, Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/l;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->c:[Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 4
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 3

    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->c:[Lcom/google/vr/sdk/widgets/video/deps/l;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 15
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->c:[Lcom/google/vr/sdk/widgets/video/deps/l;

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

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/iv;

    .line 29
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->c:[Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/iv;->c:[Lcom/google/vr/sdk/widgets/video/deps/l;

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

    .line 19
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->d:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 21
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->c:[Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->d:I

    .line 23
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->d:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 31
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 32
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->c:[Lcom/google/vr/sdk/widgets/video/deps/l;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
