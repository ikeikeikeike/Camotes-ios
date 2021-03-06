//
//  Created by Tatsuo Ikeda on 2018/02/18.
//  Copyright © 2018 Tatsuo Ikeda. All rights reserved.
//
import Swinject
import SwinjectStoryboard

final class Injector {
    static let ct = SwinjectStoryboard.defaultContainer

    class func initialize() {
        prepared()
        inject()
    }

    private class func prepared() {
//        ct.register(TokenKey.self) { _ in TokenKeyImpl() }
    }

    private class func inject() {
        ct.register(ScraperStore.self) { _ in ScraperStoreImpl() }
        ct.register(ScraperRepo.self) { _ in ScraperRepoImpl() }

        ct.register(FilerRepo.self) { _ in FilerRepoImpl() }
        ct.register(FilerStore.self) { _ in FilerStoreImpl() }

        ct.register(BrowserUseCase.self) { _ in BrowserUseCaseImpl() }
        ct.register(FilerUseCase.self) { _ in FilerUseCaseImpl() }

    }
}
