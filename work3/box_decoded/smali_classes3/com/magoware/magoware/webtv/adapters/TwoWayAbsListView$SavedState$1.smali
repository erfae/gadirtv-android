.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState$1;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 864
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;-><init>(Landroid/os/Parcel;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 862
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 868
    new-array p1, p1, [Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 862
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState$1;->newArray(I)[Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$SavedState;

    move-result-object p1

    return-object p1
.end method
