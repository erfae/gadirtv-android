.class public Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;
.super Ljava/lang/Object;
.source "OSDObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public channel:Lcom/magoware/magoware/webtv/network/mvvm/models/OSDChannel;

.field public duration_seconds:J

.field public id:J

.field public long_description:Ljava/lang/String;

.field public program_end:Ljava/lang/String;

.field public program_start:Ljava/lang/String;

.field public short_description:Ljava/lang/String;

.field public short_name:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->id:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->title:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->short_name:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->short_description:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->long_description:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_start:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_end:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->duration_seconds:J

    .line 38
    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDChannel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->channel:Lcom/magoware/magoware/webtv/network/mvvm/models/OSDChannel;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannel()Lcom/magoware/magoware/webtv/network/mvvm/models/OSDChannel;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->channel:Lcom/magoware/magoware/webtv/network/mvvm/models/OSDChannel;

    return-object v0
.end method

.method public getDuration_seconds()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->duration_seconds:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->id:J

    return-wide v0
.end method

.method public getLong_description()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->long_description:Ljava/lang/String;

    return-object v0
.end method

.method public getProgram_end()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_end:Ljava/lang/String;

    return-object v0
.end method

.method public getProgram_start()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_start:Ljava/lang/String;

    return-object v0
.end method

.method public getShort_description()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->short_description:Ljava/lang/String;

    return-object v0
.end method

.method public getShort_name()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->short_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Lcom/magoware/magoware/webtv/network/mvvm/models/OSDChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->channel:Lcom/magoware/magoware/webtv/network/mvvm/models/OSDChannel;

    return-void
.end method

.method public setDuration_seconds(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration_seconds"
        }
    .end annotation

    .line 120
    iput-wide p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->duration_seconds:J

    return-void
.end method

.method public setId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 64
    iput-wide p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->id:J

    return-void
.end method

.method public setLong_description(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "long_description"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->long_description:Ljava/lang/String;

    return-void
.end method

.method public setProgram_end(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "program_end"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_end:Ljava/lang/String;

    return-void
.end method

.method public setProgram_start(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "program_start"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_start:Ljava/lang/String;

    return-void
.end method

.method public setShort_description(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "short_description"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->short_description:Ljava/lang/String;

    return-void
.end method

.method public setShort_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "short_name"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->short_name:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->title:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 48
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->short_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->short_description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->long_description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_start:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->program_end:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->duration_seconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;->channel:Lcom/magoware/magoware/webtv/network/mvvm/models/OSDChannel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
