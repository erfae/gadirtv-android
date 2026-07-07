.class public Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "MagowareViewModel.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public addChannelObservable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "description",
            "stream",
            "iconUrl",
            "genreId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;",
            ">;>;"
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public changeUserPassword(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->changeUserPassword(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public checkWifiObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/CountryObject;",
            ">;>;"
        }
    .end annotation

    .line 242
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->checkWifi()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public deleteChannelObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text_nr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->deleteChannel(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public editChannel(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;",
            ">;>;"
        }
    .end annotation

    .line 320
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->editChannel(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAccountPurchasesObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;",
            ">;>;"
        }
    .end annotation

    .line 312
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getAccountPurchases()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAccountSettingsObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;",
            ">;>;"
        }
    .end annotation

    .line 300
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getAccountSettings()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAccountSubscriptionObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;",
            ">;>;"
        }
    .end annotation

    .line 308
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getAccountSubscription()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAccountUserDataObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;",
            ">;>;"
        }
    .end annotation

    .line 292
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getAccountUserData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAllVodCategoriesObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;",
            ">;>;"
        }
    .end annotation

    .line 250
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getAllVodCategories()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAssetsDetailsObservable(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;"
        }
    .end annotation

    .line 332
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getAssetsDetails(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getAssetsMenuObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;>;"
        }
    .end annotation

    .line 324
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getAssetsMenu()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAssetsMenuObservable(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 328
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getAssetsCategories(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getBookingInfoObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelBooking;",
            ">;>;"
        }
    .end annotation

    .line 336
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getBookingInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getCastDetails(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;",
            ">;"
        }
    .end annotation

    .line 409
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getCastDetails(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getCastMembers(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movieId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;",
            ">;>;"
        }
    .end annotation

    .line 405
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getCastMembers(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getCatchupStreamData(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;",
            ">;>;"
        }
    .end annotation

    .line 382
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getCatchupStreamData(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getChannelCategoryObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;>;"
        }
    .end annotation

    .line 226
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getChannelCategory()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getChannelInfoObservable(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/EpgObject;",
            ">;>;"
        }
    .end annotation

    .line 369
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getChannelInfo(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getChannelOSDObservable(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;",
            ">;>;"
        }
    .end annotation

    .line 374
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getChannelOSD(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getChannelsListObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;>;"
        }
    .end annotation

    .line 234
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getChannelsList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerChannelCategoryObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;>;"
        }
    .end annotation

    .line 230
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getChannelCategory()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerChannelsObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;",
            ">;>;"
        }
    .end annotation

    .line 238
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getCustomerChannels()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerOrdersObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;",
            ">;>;"
        }
    .end annotation

    .line 340
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getCustomerOrders()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getDashboardListObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObject;",
            ">;>;"
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getDashboardList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceMenuObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObject;",
            ">;>;"
        }
    .end annotation

    .line 262
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getDeviceMenu()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getEpgData(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelNumber",
            "start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;",
            ">;>;"
        }
    .end annotation

    .line 389
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getEpg(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getHotelDashboardObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;",
            ">;"
        }
    .end annotation

    .line 352
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getHotelDashboard()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getHotelInfoObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;",
            ">;>;"
        }
    .end annotation

    .line 344
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getHotelInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getLiveTvChannelsObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;>;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getLiveTvChannels()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getPallyTokenObservable()V
    .locals 1

    .line 361
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getPallyconToken()Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public getPaymentComboList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
            ">;>;"
        }
    .end annotation

    .line 378
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getComboList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getPopupProgramInfoObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "programId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;",
            ">;>;"
        }
    .end annotation

    .line 217
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getPopupProgramInfo(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getRandomMovieObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getRandomMovie()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedMoviesObservable(III)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vodId",
            "page",
            "limit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;>;"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getRelatedMovies(III)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getRelatedTvShowObservable(III)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vodId",
            "page",
            "limit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;>;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getRelatedTvShow(III)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getSeeMoreObservable(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getSeeMoreItems(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getSettingsObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/SettingsObject;",
            ">;>;"
        }
    .end annotation

    .line 159
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getSettings()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsWebRequestsObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/SettingsObject;",
            ">;>;"
        }
    .end annotation

    .line 258
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getSettings()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getSmsCodeObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getSmsCode(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getStreamToken(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenUrl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->postTokenUrl(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getTimezoneObservable()V
    .locals 1

    .line 393
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getTimezone()D

    return-void
.end method

.method public getTvProgramsObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "search"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ">;>;"
        }
    .end annotation

    .line 222
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getTvPrograms(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVodCategoriesObservable(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodCategories(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVodDetailsObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;>;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodDetails(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVodMenuObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;>;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodMenu()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getVodRecommendationsObservable(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodRecommendations(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVodRelatedObservable(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodSimilar(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVodSearchListObservable(Ljava/lang/String;Ljava/lang/String;II)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "query",
            "page",
            "limit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodSearchListResults(Ljava/lang/String;Ljava/lang/String;II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVodSubtitlesObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;",
            ">;>;"
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodSubtitles()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getVodTotalHitsObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idVod"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/VODHitObject;",
            ">;>;"
        }
    .end annotation

    .line 197
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodTotalHits(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVodTvShowDetailsObservable(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvShowId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodTvShowDetails(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVodTvShowEpisodeDetail(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seasonId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodTvShowEpisodeDetail(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVodTvShowEpisodesObservable(II)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tvShowId",
            "seasonNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodTvShowEpisodes(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getVodTvShowsObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getVodTvShows()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getWeatherData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;",
            ">;>;"
        }
    .end annotation

    .line 365
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getWeatherData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getWelcomeMsg()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessageResponse;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getWelcomeMsg()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public isAuthorizedObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->isAuthorized()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public isAuthorizedObservable(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->isAuthorized(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public loginHotel(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 266
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->loginHotel(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public loginMultiCompany(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 284
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->loginMultiCompany(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public loginObservable(Ljava/lang/String;Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->login(Ljava/lang/String;Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public logoutObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LogoutOject;",
            ">;>;"
        }
    .end annotation

    .line 246
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->logout()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public logoutOtherDevicesObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LogoutOtherDevices;",
            ">;>;"
        }
    .end annotation

    .line 184
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->logoutOtherDevices(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public logoutUserObservable(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->logoutUser(Landroid/content/Context;)V

    return-void
.end method

.method public postSmsVerificationObservable(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->postSmsVerification(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public qrCodeTokenPost(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/vod/bigscreen/models/QrCodeResponse;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->qrCodeTokenPost(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public resetParentPasswordObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/ForgotPinObject;",
            ">;>;"
        }
    .end annotation

    .line 316
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->resetParentPassword()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public resetPasswordObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ResetPasswordObject;",
            ">;>;"
        }
    .end annotation

    .line 209
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->resetPassword(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public scheduleProgramObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "programId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/ScheduleEpgProgram;",
            ">;>;"
        }
    .end annotation

    .line 213
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->scheduleProgram(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public sendThumbReaction(IIZ)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vodId",
            "thumbReaction",
            "isTvShow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 131
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendTvShowThumbReaction(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendVodThumbReaction(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public setAccountSettingsObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;",
            ">;>;"
        }
    .end annotation

    .line 304
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->setAccountSettings(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public setAccountUserDataObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;",
            ">;>;"
        }
    .end annotation

    .line 296
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->setAccountUserData(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public setFirebaseIdObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->setFirebaseId(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public setGuestCheckoutObservable()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->setGuestCheckout()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public setTvShowFavorite(II)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vodId",
            "vodResume"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    .line 141
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->setTvShowFavorite(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public setVmxId(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vmxId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 386
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->setVmxId(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public setVodFavorite(II)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vodId",
            "vodResume"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    .line 401
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->setVodFavorite(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public setVodResume(II)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vodId",
            "vodResume"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    .line 397
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->setVodResume(II)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public setVoucherCodeObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voucherCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->setVoucherCode(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public signUpObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 356
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/magoware/magoware/webtv/util/Server;->currentServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/apiv2/sites_web/yesnet/registration"

    goto :goto_0

    :cond_0
    const-string v2, "/apiv2/sites_web/registration"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->signUp(Ljava/lang/String;Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public updateFavoriteChannelObservable(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelNumber",
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 205
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->updateFavoriteChannel(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public vodTokenObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->vodToken(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
