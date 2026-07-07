.class public final Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;
.super Ljava/lang/Object;
.source "VodSubtitle.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "title",
        "",
        "url",
        "vodid",
        "(ILjava/lang/String;Ljava/lang/String;I)V",
        "getId",
        "()I",
        "getTitle",
        "()Ljava/lang/String;",
        "getUrl",
        "getVodid",
        "describeContents",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final vodid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle$Creator;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle$Creator;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->id:I

    iput-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->url:Ljava/lang/String;

    iput p4, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->vodid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->id:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getVodid()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->vodid:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->vodid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
