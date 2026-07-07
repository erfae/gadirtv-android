.class public final Lcom/google/vr/sdk/widgets/video/deps/cb$a;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/cb$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[B

.field public final d:Z

.field private f:I

.field private final g:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cb$a$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cb$a$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->e:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->c:[B

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    .line 7
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a:Ljava/lang/String;

    .line 8
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->c:[B

    .line 10
    iput-boolean p5, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/cb$a;)Ljava/util/UUID;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    return-object p0
.end method


# virtual methods
.method public a([B)Lcom/google/vr/sdk/widgets/video/deps/cb$a;
    .locals 7

    .line 22
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->d:Z

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-object v6
.end method

.method public a()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->c:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cb$a;)Z
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a(Ljava/util/UUID;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/util/UUID;)Z
    .locals 2

    .line 19
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->a:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 23
    instance-of v0, p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 27
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    .line 28
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b:Ljava/lang/String;

    .line 29
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    .line 30
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->c:[B

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->c:[B

    .line 31
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 33
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->f:I

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 37
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->f:I

    .line 39
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->f:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 41
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->g:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->c:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 46
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->d:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
