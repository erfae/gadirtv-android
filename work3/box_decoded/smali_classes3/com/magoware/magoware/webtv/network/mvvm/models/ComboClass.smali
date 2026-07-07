.class public final Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;
.super Ljava/lang/Object;
.source "ComboClass.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "product_id",
        "",
        "name",
        "duration",
        "value",
        "(ILjava/lang/String;Ljava/lang/String;II)V",
        "getDuration",
        "()I",
        "getId",
        "getName",
        "()Ljava/lang/String;",
        "getProduct_id",
        "getValue",
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
            "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final duration:I

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final product_id:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass$Creator;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass$Creator;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "product_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->id:I

    iput-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->product_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->name:Ljava/lang/String;

    iput p4, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->duration:I

    iput p5, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->value:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->duration:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->id:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProduct_id()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->product_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->product_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
