.class public Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;
.super Ljava/lang/Object;
.source "MediaMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLargeimage:Ljava/lang/String;

.field private mMediaAlbumArtResId:Ljava/lang/String;

.field private mMediaAlbumName:Ljava/lang/String;

.field private mMediaArtistName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSourcePath:Ljava/lang/String;

.field private mMediaSourceUri:Landroid/net/Uri;

.field private mMediaTitle:Ljava/lang/String;

.field private mMovieUrl:Ljava/lang/String;

.field private mSubtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/Subtitle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData$1;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData$1;-><init>()V

    sput-object v0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourceUri:Landroid/net/Uri;

    const-string v0, ""

    .line 32
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourcePath:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaTitle:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumArtResId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMovieUrl:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mLargeimage:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mSubtitles:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaArtistName:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourceUri:Landroid/net/Uri;

    const-string v0, ""

    .line 32
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourcePath:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaTitle:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumArtResId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMovieUrl:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mLargeimage:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourceUri:Landroid/net/Uri;

    .line 46
    iput-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourcePath:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaTitle:Ljava/lang/String;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaArtistName:Ljava/util/List;

    .line 49
    iput-object p4, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumName:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumArtResId:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMovieUrl:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mLargeimage:Ljava/lang/String;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mSubtitles:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourceUri:Landroid/net/Uri;

    const-string v1, ""

    .line 32
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourcePath:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaTitle:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumName:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumArtResId:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMovieUrl:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mLargeimage:Ljava/lang/String;

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourceUri:Landroid/net/Uri;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourcePath:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaTitle:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumArtResId:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMovieUrl:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mLargeimage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLargeimage()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mLargeimage:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaAlbumArtResId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumArtResId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaAlbumName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaArtistName()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@cards20 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaArtistName:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaArtistName:Ljava/util/List;

    return-object v0
.end method

.method public getMediaSourcePath()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSourceUri()Landroid/net/Uri;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMediaTitle()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMovieUrl()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMovieUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/supportleanbackshowcase/models/Subtitle;",
            ">;"
        }
    .end annotation

    .line 139
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@cards22 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mSubtitles:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mSubtitles:Ljava/util/List;

    return-object v0
.end method

.method public setLargeImage(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mLargeimage:Ljava/lang/String;

    return-void
.end method

.method public setMediaAlbumArtResId(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumArtResId:Ljava/lang/String;

    return-void
.end method

.method public setMediaAlbumArtUrl(Ljava/lang/String;)V
    .locals 3

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@setMediaAlbumArtUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMovieUrl:Ljava/lang/String;

    return-void
.end method

.method public setMediaAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumName:Ljava/lang/String;

    return-void
.end method

.method public setMediaArtistName(Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaArtistName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMediaSourcePath(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourcePath:Ljava/lang/String;

    return-void
.end method

.method public setMediaSourceUri(Landroid/net/Uri;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourceUri:Landroid/net/Uri;

    return-void
.end method

.method public setMediaTitle(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaTitle:Ljava/lang/String;

    return-void
.end method

.method public setSubtitles(Landroidx/leanback/supportleanbackshowcase/models/Subtitle;)V
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mSubtitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 173
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 174
    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaSourcePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMediaAlbumArtResId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mMovieUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/media/MediaMetaData;->mLargeimage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
