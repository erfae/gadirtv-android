.class public final Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;
.super Ljava/lang/Object;
.source "TvMediaMetadata.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata$Creator;,
        Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTvMediaMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TvMediaMetadata.kt\ncom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,223:1\n1#2:224\n1517#3:225\n1588#3,3:226\n37#4,2:229\n*E\n*S KotlinDebug\n*F\n+ 1 TvMediaMetadata.kt\ncom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata\n*L\n154#1:225\n154#1,3:226\n163#1,2:229\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008N\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 v2\u00020\u0001:\u0001vB\u00db\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u001bJ\t\u0010P\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010Q\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010H\u00c6\u0003J\u0011\u0010R\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010H\u00c6\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010T\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010CJ\u000b\u0010U\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010V\u001a\u00020\u000bH\u00c6\u0003J\t\u0010W\u001a\u00020\u0017H\u00c6\u0003J\t\u0010X\u001a\u00020\u0017H\u00c6\u0003J\t\u0010Y\u001a\u00020\u000bH\u00c6\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010CJ\t\u0010[\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\\\u001a\u00020\u0003H\u00c6\u0003J\t\u0010]\u001a\u00020\u0003H\u00c6\u0003J\t\u0010^\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010CJ\u0010\u0010a\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u00108J\u0010\u0010b\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u00108J\u00ec\u0001\u0010c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00102\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000b2\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010dJ!\u0010e\u001a\u00020f\"\u000c\u0008\u0000\u0010g*\u0006\u0012\u0002\u0008\u00030h2\u0006\u0010i\u001a\u0002Hg\u00a2\u0006\u0002\u0010jJ\t\u0010k\u001a\u00020\u000bH\u00d6\u0001J\u0013\u0010l\u001a\u00020\u00172\u0008\u0010m\u001a\u0004\u0018\u00010nH\u0096\u0002J\u0008\u0010o\u001a\u00020\u000bH\u0016J\u0008\u0010p\u001a\u00020\u0017H\u0002J\t\u0010q\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010r\u001a\u00020f2\u0006\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020\u000bH\u00d6\u0001R\u001a\u0010\u0015\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010%\"\u0004\u0008)\u0010\'R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010!\"\u0004\u0008+\u0010#R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010%\"\u0004\u0008-\u0010\'R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010%R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010;\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010;\u001a\u0004\u0008<\u00108\"\u0004\u0008=\u0010:R\u001a\u0010\u0019\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\u001d\"\u0004\u0008?\u0010\u001fR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010/\"\u0004\u0008A\u00101R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010F\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010%R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010%\"\u0004\u0008I\u0010\'R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010F\u001a\u0004\u0008J\u0010C\"\u0004\u0008K\u0010ER\u001a\u0010\u0018\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u00103\"\u0004\u0008M\u00105R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010F\u001a\u0004\u0008N\u0010C\"\u0004\u0008O\u0010E\u00a8\u0006w"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "collectionId",
        "title",
        "searchableTitle",
        "contentUri",
        "Landroid/net/Uri;",
        "author",
        "year",
        "",
        "playbackDurationMillis",
        "",
        "playbackPositionMillis",
        "ratings",
        "",
        "genres",
        "description",
        "trackNumber",
        "artUri",
        "artAspectRatio",
        "hidden",
        "",
        "watchNext",
        "programType",
        "resumePosition",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;)V",
        "getArtAspectRatio",
        "()I",
        "setArtAspectRatio",
        "(I)V",
        "getArtUri",
        "()Landroid/net/Uri;",
        "setArtUri",
        "(Landroid/net/Uri;)V",
        "getAuthor",
        "()Ljava/lang/String;",
        "setAuthor",
        "(Ljava/lang/String;)V",
        "getCollectionId",
        "setCollectionId",
        "getContentUri",
        "setContentUri",
        "getDescription",
        "setDescription",
        "getGenres",
        "()Ljava/util/List;",
        "setGenres",
        "(Ljava/util/List;)V",
        "getHidden",
        "()Z",
        "setHidden",
        "(Z)V",
        "getId",
        "getPlaybackDurationMillis",
        "()Ljava/lang/Long;",
        "setPlaybackDurationMillis",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getPlaybackPositionMillis",
        "setPlaybackPositionMillis",
        "getProgramType",
        "setProgramType",
        "getRatings",
        "setRatings",
        "getResumePosition",
        "()Ljava/lang/Integer;",
        "setResumePosition",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getSearchableTitle",
        "getTitle",
        "setTitle",
        "getTrackNumber",
        "setTrackNumber",
        "getWatchNext",
        "setWatchNext",
        "getYear",
        "setYear",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;",
        "copyToBuilder",
        "",
        "T",
        "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;",
        "builder",
        "(Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;)V",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "isStateless",
        "toString",
        "writeToParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata$Companion;


# instance fields
.field private artAspectRatio:I

.field private artUri:Landroid/net/Uri;

.field private author:Ljava/lang/String;

.field private collectionId:Ljava/lang/String;

.field private contentUri:Landroid/net/Uri;

.field private description:Ljava/lang/String;

.field private genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hidden:Z

.field private final id:Ljava/lang/String;

.field private playbackDurationMillis:Ljava/lang/Long;

.field private playbackPositionMillis:Ljava/lang/Long;

.field private programType:I

.field private ratings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resumePosition:Ljava/lang/Integer;

.field private final searchableTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trackNumber:Ljava/lang/Integer;

.field private watchNext:Z

.field private year:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata$Companion;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata$Creator;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata$Creator;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            "IZZI",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    const-string v6, "id"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "collectionId"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "title"

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "searchableTitle"

    invoke-static {p4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "contentUri"

    invoke-static {p5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->id:Ljava/lang/String;

    iput-object v2, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->collectionId:Ljava/lang/String;

    iput-object v3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->title:Ljava/lang/String;

    iput-object v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->searchableTitle:Ljava/lang/String;

    iput-object v5, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->contentUri:Landroid/net/Uri;

    move-object v1, p6

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->author:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->year:Ljava/lang/Integer;

    move-object v1, p8

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackDurationMillis:Ljava/lang/Long;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackPositionMillis:Ljava/lang/Long;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->ratings:Ljava/util/List;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->genres:Ljava/util/List;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->description:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->trackNumber:Ljava/lang/Integer;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artUri:Landroid/net/Uri;

    move/from16 v1, p15

    iput v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artAspectRatio:I

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->hidden:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->watchNext:Z

    move/from16 v1, p18

    iput v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->programType:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->resumePosition:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata$Companion;

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata$Companion;->searchableText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    move-object/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 57
    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    .line 60
    move-object v1, v2

    check-cast v1, Ljava/lang/Long;

    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    .line 63
    move-object v1, v2

    check-cast v1, Ljava/lang/Long;

    move-object v11, v1

    goto :goto_4

    :cond_4
    move-object/from16 v11, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    .line 66
    move-object v1, v2

    check-cast v1, Ljava/util/List;

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    .line 69
    move-object v1, v2

    check-cast v1, Ljava/util/List;

    move-object v13, v1

    goto :goto_6

    :cond_6
    move-object/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    .line 72
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v14, v1

    goto :goto_7

    :cond_7
    move-object/from16 v14, p12

    :goto_7
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_8

    .line 75
    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    move-object v15, v1

    goto :goto_8

    :cond_8
    move-object/from16 v15, p13

    :goto_8
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_9

    .line 78
    move-object v1, v2

    check-cast v1, Landroid/net/Uri;

    move-object/from16 v16, v1

    goto :goto_9

    :cond_9
    move-object/from16 v16, p14

    :goto_9
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_a

    const/4 v1, 0x5

    const/16 v17, 0x5

    goto :goto_a

    :cond_a
    move/from16 v17, p15

    :goto_a
    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    const/16 v18, 0x0

    goto :goto_b

    :cond_b
    move/from16 v18, p16

    :goto_b
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    const/16 v19, 0x0

    goto :goto_c

    :cond_c
    move/from16 v19, p17

    :goto_c
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    const/16 v20, 0x0

    goto :goto_d

    :cond_d
    move/from16 v20, p18

    :goto_d
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 97
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v21, v0

    goto :goto_e

    :cond_e
    move-object/from16 v21, p19

    :goto_e
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v21}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;ILjava/lang/Object;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->collectionId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->title:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->searchableTitle:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->contentUri:Landroid/net/Uri;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->author:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->year:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackDurationMillis:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackPositionMillis:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->ratings:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->genres:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->description:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->trackNumber:Ljava/lang/Integer;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artUri:Landroid/net/Uri;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artAspectRatio:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget-boolean v15, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->hidden:Z

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget-boolean v15, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->watchNext:Z

    goto :goto_10

    :cond_10
    move/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_11

    iget v15, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->programType:I

    goto :goto_11

    :cond_11
    move/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v1, v1, v16

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->resumePosition:Ljava/lang/Integer;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p18, v15

    move-object/from16 p19, v1

    invoke-virtual/range {p0 .. p19}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private final isStateless()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackDurationMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->hidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->watchNext:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->ratings:Ljava/util/List;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->genres:Ljava/util/List;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->trackNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component14()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artAspectRatio:I

    return v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->hidden:Z

    return v0
.end method

.method public final component17()Z
    .locals 1

    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->watchNext:Z

    return v0
.end method

.method public final component18()I
    .locals 1

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->programType:I

    return v0
.end method

.method public final component19()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->resumePosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->searchableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackDurationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackPositionMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            "IZZI",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    const-string v0, "id"

    move-object/from16 v20, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionId"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchableTitle"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUri"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v21, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct/range {v0 .. v19}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;)V

    return-object v21
.end method

.method public final copyToBuilder(Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder<",
            "*>;>(TT;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setContentId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setTitle(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v0

    check-cast v0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->programType:I

    invoke-virtual {v0, v1}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 128
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->author:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setAuthor(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setDescription(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v0

    check-cast v0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->year:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setReleaseDate(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setEpisodeNumber(I)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v0

    check-cast v0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackDurationMillis:Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setDurationMillis(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackPositionMillis:Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setLastPlaybackPositionMillis(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 147
    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setPosterArtUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    .line 148
    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artAspectRatio:I

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setPosterArtAspectRatio(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->ratings:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 154
    check-cast v0, Ljava/lang/Iterable;

    .line 225
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 226
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 227
    check-cast v5, Ljava/lang/String;

    .line 156
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v5, "."

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 157
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 158
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x5f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "com.android.tv"

    .line 160
    invoke-static {v8, v6, v5, v7}, Landroid/media/tv/TvContentRating;->createRating(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v5

    goto :goto_1

    :cond_7
    move-object v5, v1

    .line 159
    :goto_1
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_8
    check-cast v4, Ljava/util/List;

    .line 225
    check-cast v4, Ljava/lang/Iterable;

    .line 162
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 163
    check-cast v0, Ljava/util/Collection;

    new-array v4, v3, [Landroid/media/tv/TvContentRating;

    .line 230
    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Landroid/media/tv/TvContentRating;

    .line 163
    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setContentRatings([Landroid/media/tv/TvContentRating;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v0

    check-cast v0, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    new-array v0, v2, [Landroid/media/tv/TvContentRating;

    new-array v2, v2, [Ljava/lang/String;

    .line 167
    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v1, "null"

    .line 165
    invoke-static {v1, v1, v1, v2}, Landroid/media/tv/TvContentRating;->createRating(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;->setContentRatings([Landroid/media/tv/TvContentRating;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object p1

    check-cast p1, Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :goto_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 23

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->isStateless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-super/range {p0 .. p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0x67f7f

    const/16 v22, 0x0

    move-object/from16 v1, p0

    .line 111
    invoke-static/range {v1 .. v22}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->copy$default(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;ILjava/lang/Object;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final getArtAspectRatio()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artAspectRatio:I

    return v0
.end method

.method public final getArtUri()Landroid/net/Uri;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getCollectionId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getGenres()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->genres:Ljava/util/List;

    return-object v0
.end method

.method public final getHidden()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->hidden:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaybackDurationMillis()Ljava/lang/Long;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackDurationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPlaybackPositionMillis()Ljava/lang/Long;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackPositionMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getProgramType()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->programType:I

    return v0
.end method

.method public final getRatings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->ratings:Ljava/util/List;

    return-object v0
.end method

.method public final getResumePosition()Ljava/lang/Integer;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->resumePosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSearchableTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->searchableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackNumber()Ljava/lang/Integer;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->trackNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWatchNext()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->watchNext:Z

    return v0
.end method

.method public final getYear()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 23

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->isStateless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0x67f7f

    const/16 v22, 0x0

    move-object/from16 v1, p0

    .line 118
    invoke-static/range {v1 .. v22}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->copy$default(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;ILjava/lang/Object;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final setArtAspectRatio(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artAspectRatio:I

    return-void
.end method

.method public final setArtUri(Landroid/net/Uri;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artUri:Landroid/net/Uri;

    return-void
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->author:Ljava/lang/String;

    return-void
.end method

.method public final setCollectionId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->collectionId:Ljava/lang/String;

    return-void
.end method

.method public final setContentUri(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->contentUri:Landroid/net/Uri;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->description:Ljava/lang/String;

    return-void
.end method

.method public final setGenres(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->genres:Ljava/util/List;

    return-void
.end method

.method public final setHidden(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->hidden:Z

    return-void
.end method

.method public final setPlaybackDurationMillis(Ljava/lang/Long;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackDurationMillis:Ljava/lang/Long;

    return-void
.end method

.method public final setPlaybackPositionMillis(Ljava/lang/Long;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackPositionMillis:Ljava/lang/Long;

    return-void
.end method

.method public final setProgramType(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->programType:I

    return-void
.end method

.method public final setRatings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->ratings:Ljava/util/List;

    return-void
.end method

.method public final setResumePosition(Ljava/lang/Integer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->resumePosition:Ljava/lang/Integer;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTrackNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->trackNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setWatchNext(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->watchNext:Z

    return-void
.end method

.method public final setYear(Ljava/lang/Integer;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->year:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TvMediaMetadata(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", collectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->collectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchableTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->searchableTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->year:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playbackDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackDurationMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playbackPositionMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackPositionMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->ratings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", genres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->genres:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->trackNumber:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", artUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", artAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artAspectRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->hidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", watchNext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->watchNext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", programType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->programType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resumePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->resumePosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->collectionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->searchableTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->contentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->year:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackDurationMillis:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->playbackPositionMillis:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->ratings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->genres:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->artAspectRatio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->hidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->watchNext:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->programType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;->resumePosition:Ljava/lang/Integer;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return-void
.end method
