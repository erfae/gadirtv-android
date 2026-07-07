.class public final Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass$Creator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;
    .locals 7

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;
    .locals 0

    new-array p1, p1, [Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass$Creator;->newArray(I)[Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;

    move-result-object p1

    return-object p1
.end method
