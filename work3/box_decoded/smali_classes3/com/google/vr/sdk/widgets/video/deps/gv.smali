.class public final Lcom/google/vr/sdk/widgets/video/deps/gv;
.super Ljava/lang/Object;
.source "EventMessage.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/gp$a;


# static fields
.field public static final g:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/gv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:[B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gv$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gv$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/gv;->g:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->d:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->e:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->f:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ[BJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:J

    .line 5
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->e:J

    .line 6
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->f:[B

    .line 7
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->d:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gv;

    .line 32
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->d:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/gv;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->e:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/gv;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/gv;->a:Ljava/lang/String;

    .line 33
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:Ljava/lang/String;

    .line 34
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->f:[B

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gv;->f:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

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
    .locals 6

    .line 17
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->h:I

    if-nez v0, :cond_2

    const/16 v0, 0x20f

    .line 19
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->d:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->e:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->h:I

    .line 26
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->e:J

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "EMSG: scheme="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 38
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gv;->f:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
