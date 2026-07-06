.class Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SimpleRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private rating:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState$1;

    invoke-direct {v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->rating:F

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->rating:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->rating:F

    return-void
.end method

.method public static synthetic access$000(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;)F
    .locals 0

    iget p0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->rating:F

    return p0
.end method

.method public static synthetic access$002(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;F)F
    .locals 0

    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->rating:F

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->rating:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
