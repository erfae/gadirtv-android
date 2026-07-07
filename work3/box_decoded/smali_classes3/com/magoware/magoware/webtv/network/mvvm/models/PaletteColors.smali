.class public Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;
.super Ljava/lang/Object;
.source "PaletteColors.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private statusBarColor:I

.field private textColor:I

.field private titleColor:I

.field private toolbarBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->toolbarBackgroundColor:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->statusBarColor:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->textColor:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->titleColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->statusBarColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->textColor:I

    return v0
.end method

.method public getTitleColor()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->titleColor:I

    return v0
.end method

.method public getToolbarBackgroundColor()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->toolbarBackgroundColor:I

    return v0
.end method

.method public setStatusBarColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statusBarColor"
        }
    .end annotation

    .line 37
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->statusBarColor:I

    return-object p0
.end method

.method public setTextColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    .line 46
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->textColor:I

    return-object p0
.end method

.method public setTitleColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleColor"
        }
    .end annotation

    .line 55
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->titleColor:I

    return-object p0
.end method

.method public setToolbarBackgroundColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolbarBackgroundColor"
        }
    .end annotation

    .line 28
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->toolbarBackgroundColor:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
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

    .line 66
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->toolbarBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->statusBarColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->textColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->titleColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
